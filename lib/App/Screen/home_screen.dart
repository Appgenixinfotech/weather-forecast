import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weatherdemo/App/Model/weather_model.dart';
import 'package:weatherdemo/Bloc/weather_bloc.dart';
import 'package:weatherdemo/Bloc/weather_event.dart';
import 'package:weatherdemo/Bloc/weather_state.dart';
import 'package:weatherdemo/Utils/app_constants.dart';
import 'package:weatherdemo/Utils/extensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<WeatherBloc>().add(FetchWeather());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.blackColor.withOpacity(0.1),
        centerTitle: true,
        title: Text(
          "Weather Forecast",
          style: TextStyle(
              color: AppColors.blackColor,
              fontSize: 17,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoaded) {
            final dailyWeather =
                _getFirstRecordForNextDays(state.weatherData.list);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 380,
                  child: ListView.separated(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: dailyWeather.length,
                    itemBuilder: (context, index) {
                      var data = dailyWeather;
                      DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(
                          (data[index].dt ?? 0) * 1000);
                      String formattedDate =
                          DateFormat('d / MM').format(dateTime);
                      String formattedTime =
                          DateFormat('h:mm a').format(dateTime);

                      return Container(
                        width: 80,
                        decoration: BoxDecoration(
                          color: AppColors.blackColor.withOpacity(0.05),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            20.spaceH,
                            Text(
                              formattedDate,
                              style: TextStyle(
                                  color: AppColors.blackColor, fontSize: 14),
                            ),
                            Text(
                              formattedTime,
                              style: TextStyle(
                                  color: AppColors.blackColor.withOpacity(0.6),
                                  fontSize: 10),
                            ),
                            20.spaceH,
                            mainWeatherData(index: index, data: data),
                            tempViewData(index: index, data: data),
                            cloudViewData(index: index, data: data),
                            cloudRainViewData(index: index, data: data),
                            windViewData(index: index, data: data),
                            20.spaceH,
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return 10.spaceW;
                    },
                  ),
                )
              ],
            );
          } else if (state is WeatherLoading) {
            return Center(
                child: CircularProgressIndicator(color: AppColors.blackColor));
          } else if (state is WeatherError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          return Container();
        },
      ),
    );
  }

  // Function to get the first record for the next 5 days
  List<WeatherList> _getFirstRecordForNextDays(BuiltList<WeatherList>? data) {
    if (data == null) return [];

    final Map<String, WeatherList> dailyWeatherMap = {};

    for (var item in data) {
      final date = DateTime.fromMillisecondsSinceEpoch((item.dt ?? 0) * 1000);
      final dayKey = DateFormat('yyyy-MM-dd').format(date);

      if (!dailyWeatherMap.containsKey(dayKey) && dailyWeatherMap.length < 5) {
        dailyWeatherMap[dayKey] = item;
      }
    }

    return dailyWeatherMap.values.toList();
  }

  Widget windViewData({required int index, List<WeatherList>? data}) {
    return data?[index].wind?.speed == null
        ? Container()
        : Column(
            children: [
              10.spaceH,
              Icon(
                CupertinoIcons.wind,
                color: AppColors.blackColor,
              ),
              Text(
                "${data?[index].wind?.speed}",
                style: TextStyle(color: AppColors.blackColor, fontSize: 14),
              ),
            ],
          );
  }

  Widget cloudRainViewData({required int index, List<WeatherList>? data}) {
    return data?[index].rain?.h3 == null
        ? Container()
        : Column(
            children: [
              10.spaceH,
              Icon(
                CupertinoIcons.cloud_rain,
                color: AppColors.blackColor,
              ),
              Text(
                "${data?[index].rain?.h3}",
                style: TextStyle(color: AppColors.blackColor, fontSize: 14),
              ),
            ],
          );
  }

  Widget cloudViewData({required int index, List<WeatherList>? data}) {
    return data?[index].clouds?.all == null
        ? Container()
        : Column(
            children: [
              10.spaceH,
              Icon(
                CupertinoIcons.cloud,
                color: AppColors.blackColor,
              ),
              Text(
                "${data?[index].clouds?.all}",
                style: TextStyle(color: AppColors.blackColor, fontSize: 14),
              ),
            ],
          );
  }

  Widget tempViewData({required int index, List<WeatherList>? data}) {
    return Column(
      children: [
        5.spaceH,
        Text(
          "${data?[index].main?.temp_min?.round()}",
          style: TextStyle(color: AppColors.blackColor, fontSize: 15),
        ),
        5.spaceH,
        Text(
          "${data?[index].main?.temp_max?.round()}",
          style: TextStyle(color: AppColors.blackColor, fontSize: 15),
        ),
      ],
    );
  }
  Widget mainWeatherData({required int index, List<WeatherList>? data}) {
    return Column(
      children: [
        Icon(
          data?[index].weather?[0].main == "Rain"
              ? CupertinoIcons.cloud_rain
              : data?[index].weather?[0].main == "Snow"
                  ? CupertinoIcons.snow
                  : CupertinoIcons.cloud,
          color: AppColors.blackColor,
        ),
        5.spaceH,
        Text(
          "${data?[index].weather?[0].main}",
          style: TextStyle(
              color: AppColors.blackColor.withOpacity(0.6), fontSize: 14),
        ),
      ],
    );
  }
}
