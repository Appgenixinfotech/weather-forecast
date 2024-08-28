// import 'package:equatable/equatable.dart';
// import 'package:weatherdemo/App/Model/weather_model.dart';
//
// class WeatherState extends Equatable {
//   List<WeatherModel> weatherList = [];
//
//   WeatherState({this.weatherList = const []});
//
//   WeatherState copyWith({List<WeatherModel>? weatherList}) {
//     return WeatherState(weatherList: weatherList ?? this.weatherList);
//   }
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [weatherList];
//
//   /*// Convert WeatherState to a JSON map
//   Map<String, dynamic> toJson() {
//     return {
//       'weatherList': weatherList.map((weather) => weather.toJson()).toList(),
//     };
//   }
//
//   // Convert JSON map to WeatherState
//   static WeatherState fromJson(Map<String, dynamic> json) {
//     return WeatherState(
//       weatherList: (json['weatherList'] as List<dynamic>)
//           .map((item) => WeatherModel.fromJson(item as Map<String, dynamic>))
//           .toList(),
//     );
//   }*/
//
//
// }

import 'package:weatherdemo/App/Model/weather_model.dart';

abstract class WeatherState {

}

class WeatherInitial extends WeatherState {}
class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final WeatherData weatherData;
  WeatherLoaded(this.weatherData);
}

class WeatherError extends WeatherState {
  final String message;
  WeatherError(this.message);
}