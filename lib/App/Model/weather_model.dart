library weather_data;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'weather_model.g.dart';

abstract class WeatherData implements Built<WeatherData, WeatherDataBuilder> {
  // Fields
  String? get cod;

  int? get message;

  int? get cnt;

  BuiltList<WeatherList>? get list;

  City? get city; // Added City field

  WeatherData._();

  factory WeatherData([void Function(WeatherDataBuilder) updates]) =
      _$WeatherData;

  static Serializer<WeatherData> get serializer => _$weatherDataSerializer;
}

abstract class WeatherList implements Built<WeatherList, WeatherListBuilder> {
  // Fields
  int? get dt;

  Main? get main;

  BuiltList<Weather>? get weather;

  Clouds? get clouds;

  Wind? get wind;

  int? get visibility;

  double? get pop;

  Rain? get rain;

  Sys? get sys;

  String? get dt_txt;

  WeatherList._();

  factory WeatherList([void Function(WeatherListBuilder) updates]) =
      _$WeatherList;

  static Serializer<WeatherList> get serializer => _$weatherListSerializer;
}

abstract class Main implements Built<Main, MainBuilder> {
  // Fields
  double? get temp;

  double? get feels_like;

  double? get temp_min;

  double? get temp_max;

  int? get pressure;

  int? get sea_level;

  int? get grnd_level;

  int? get humidity;

  double? get temp_kf;

  Main._();

  factory Main([void Function(MainBuilder) updates]) = _$Main;

  static Serializer<Main> get serializer => _$mainSerializer;
}

abstract class Weather implements Built<Weather, WeatherBuilder> {
  // Fields
  int? get id;

  String? get main;

  String? get description;

  String? get icon;

  Weather._();

  factory Weather([void Function(WeatherBuilder) updates]) = _$Weather;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}

abstract class Clouds implements Built<Clouds, CloudsBuilder> {
  // Fields
  int? get all;

  Clouds._();

  factory Clouds([void Function(CloudsBuilder) updates]) = _$Clouds;

  static Serializer<Clouds> get serializer => _$cloudsSerializer;
}

abstract class Wind implements Built<Wind, WindBuilder> {
  // Fields
  double? get speed;

  int? get deg;

  double? get gust;

  Wind._();

  factory Wind([void Function(WindBuilder) updates]) = _$Wind;

  static Serializer<Wind> get serializer => _$windSerializer;
}

abstract class Rain implements Built<Rain, RainBuilder> {
  // Fields
  double? get h3;

  Rain._();

  factory Rain([void Function(RainBuilder) updates]) = _$Rain;

  static Serializer<Rain> get serializer => _$rainSerializer;
}

abstract class Sys implements Built<Sys, SysBuilder> {
  // Fields
  String? get pod;

  Sys._();

  factory Sys([void Function(SysBuilder) updates]) = _$Sys;

  static Serializer<Sys> get serializer => _$sysSerializer;
}

// New class for City
abstract class City implements Built<City, CityBuilder> {
  // Fields
  int? get id;

  String? get name;

  Coord? get coord;

  String? get country;

  int? get population;

  int? get timezone;

  int? get sunrise;

  int? get sunset;

  City._();

  factory City([void Function(CityBuilder) updates]) = _$City;

  static Serializer<City> get serializer => _$citySerializer;
}

// New class for Coord
abstract class Coord implements Built<Coord, CoordBuilder> {
  // Fields
  double? get lat;

  double? get lon;

  Coord._();

  factory Coord([void Function(CoordBuilder) updates]) = _$Coord;

  static Serializer<Coord> get serializer => _$coordSerializer;
}

// Serializer for `Built` models
@SerializersFor([
  WeatherData,
  WeatherList,
  Main,
  Weather,
  Clouds,
  Wind,
  Rain,
  Sys,
  City, // Added City
  Coord, // Added Coord
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
