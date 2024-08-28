
import 'dart:async';
import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weatherdemo/ApiService/api_provider.dart';
import 'package:weatherdemo/App/Model/weather_model.dart';
import 'package:weatherdemo/Bloc/weather_event.dart';
import 'package:weatherdemo/Bloc/weather_state.dart';

class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    changeInterNetConnectivity();
    on<FetchWeather>(getWeatherData);
  }

  Position? position;

  determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    

    // serviceEnabled = await Geolocator.isLocationServiceEnabled();
    // if (!serviceEnabled) {
    //   return Future.error('Location services are disabled.');
    // }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(WeatherError("Location Permission Required:"));
      }
    }
    if (permission == LocationPermission.deniedForever) {
      emit(WeatherError("Location Permission Required:"));
    }
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
  }

  void changeInterNetConnectivity() {
    if (state is WeatherInitial) {
      Connectivity()
          .onConnectivityChanged
          .listen((List<ConnectivityResult> connectivityResult) {
        if (state is WeatherError) {
          if (connectivityResult.contains(ConnectivityResult.mobile) ||
              connectivityResult.contains(ConnectivityResult.wifi)) {
            callApi();
          }
        }
      });
    }
  }

  Future<void> callApi() async {
    emit(WeatherLoading());
    await determinePosition();
    try {
      var response = await ApiProvider.fetchWeatherData(
          appId: "37ea9939152496e5de6ca532f93817fd",
          lat: position?.latitude ?? 0,
          lon: position?.longitude ?? 0);

      log("--${position?.latitude}----------${position?.longitude}---------)${response.toString()}");

      emit(WeatherLoaded(response ?? WeatherData()));
    } catch (e) {
      emit(WeatherError("${e}"));
    }
  }

  Future<void> getWeatherData(
      FetchWeather event, Emitter<WeatherState> emit) async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.wifi)) {
      callApi();
    } else {
      if (state is WeatherLoaded) {
        return;
      } else {
        emit(WeatherError("No Internet Connection"));
      }
    }
  }

  @override
  WeatherState fromJson(Map<String, dynamic> json) {
    if (json.containsKey('weather')) {
      final weatherData =
          serializers.deserializeWith(WeatherData.serializer, json['weather']);
      print("------------fromJson------)${weatherData?.list?.length}");
      return WeatherLoaded(weatherData ?? WeatherData());
    }
    return WeatherInitial(); // Default state
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    if (state is WeatherLoaded) {
      // Serialize WeatherLoaded state
      final weatherData =
          serializers.serializeWith(WeatherData.serializer, state.weatherData);
      print("---------------------------)");
      return {'weather': weatherData};
    }
    return null; // Default state or handle other states
  }
}
