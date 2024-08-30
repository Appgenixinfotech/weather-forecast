
import 'package:weatherdemo/App/Model/weather_model.dart';
import 'package:weatherdemo/main.dart';

class ApiProvider {
   Future<WeatherData?> fetchWeatherData(
      {required double lat, required double lon, required String appId,bool isStateOn=false}) async {

      try {
        var response = await dio.get(
          'https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$appId&units=metric'
        );
        if (response.statusCode == 200) {
          var data = serializers.deserializeWith(WeatherData.serializer, response.data);
        print("---------)${response.data.toString()}");

          return data;
        } else {
          throw Exception("Failed to get Data:");
        }
      } catch (e) {
        print("${e}");
        throw Exception("Failed to get Data:");
      }

  }
}
