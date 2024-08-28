// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(City.serializer)
      ..add(Clouds.serializer)
      ..add(Coord.serializer)
      ..add(Main.serializer)
      ..add(Rain.serializer)
      ..add(Sys.serializer)
      ..add(Weather.serializer)
      ..add(WeatherData.serializer)
      ..add(WeatherList.serializer)
      ..add(Wind.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Weather)]),
          () => new ListBuilder<Weather>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherList)]),
          () => new ListBuilder<WeatherList>()))
    .build();
Serializer<WeatherData> _$weatherDataSerializer = new _$WeatherDataSerializer();
Serializer<WeatherList> _$weatherListSerializer = new _$WeatherListSerializer();
Serializer<Main> _$mainSerializer = new _$MainSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<Clouds> _$cloudsSerializer = new _$CloudsSerializer();
Serializer<Wind> _$windSerializer = new _$WindSerializer();
Serializer<Rain> _$rainSerializer = new _$RainSerializer();
Serializer<Sys> _$sysSerializer = new _$SysSerializer();
Serializer<City> _$citySerializer = new _$CitySerializer();
Serializer<Coord> _$coordSerializer = new _$CoordSerializer();

class _$WeatherDataSerializer implements StructuredSerializer<WeatherData> {
  @override
  final Iterable<Type> types = const [WeatherData, _$WeatherData];
  @override
  final String wireName = 'WeatherData';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cod;
    if (value != null) {
      result
        ..add('cod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cnt;
    if (value != null) {
      result
        ..add('cnt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.list;
    if (value != null) {
      result
        ..add('list')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(WeatherList)])));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(City)));
    }
    return result;
  }

  @override
  WeatherData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'cnt':
          result.cnt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherList)]))!
              as BuiltList<Object?>);
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
              specifiedType: const FullType(City))! as City);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherListSerializer implements StructuredSerializer<WeatherList> {
  @override
  final Iterable<Type> types = const [WeatherList, _$WeatherList];
  @override
  final String wireName = 'WeatherList';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dt;
    if (value != null) {
      result
        ..add('dt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.main;
    if (value != null) {
      result
        ..add('main')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Main)));
    }
    value = object.weather;
    if (value != null) {
      result
        ..add('weather')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Weather)])));
    }
    value = object.clouds;
    if (value != null) {
      result
        ..add('clouds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Clouds)));
    }
    value = object.wind;
    if (value != null) {
      result
        ..add('wind')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Wind)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pop;
    if (value != null) {
      result
        ..add('pop')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.rain;
    if (value != null) {
      result
        ..add('rain')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Rain)));
    }
    value = object.sys;
    if (value != null) {
      result
        ..add('sys')
        ..add(serializers.serialize(value, specifiedType: const FullType(Sys)));
    }
    value = object.dt_txt;
    if (value != null) {
      result
        ..add('dt_txt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
              specifiedType: const FullType(Main))! as Main);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))!
              as BuiltList<Object?>);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(Clouds))! as Clouds);
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(Wind))! as Wind);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'rain':
          result.rain.replace(serializers.deserialize(value,
              specifiedType: const FullType(Rain))! as Rain);
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys))! as Sys);
          break;
        case 'dt_txt':
          result.dt_txt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$MainSerializer implements StructuredSerializer<Main> {
  @override
  final Iterable<Type> types = const [Main, _$Main];
  @override
  final String wireName = 'Main';

  @override
  Iterable<Object?> serialize(Serializers serializers, Main object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.temp;
    if (value != null) {
      result
        ..add('temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.feels_like;
    if (value != null) {
      result
        ..add('feels_like')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.temp_min;
    if (value != null) {
      result
        ..add('temp_min')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.temp_max;
    if (value != null) {
      result
        ..add('temp_max')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pressure;
    if (value != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sea_level;
    if (value != null) {
      result
        ..add('sea_level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.grnd_level;
    if (value != null) {
      result
        ..add('grnd_level')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.humidity;
    if (value != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.temp_kf;
    if (value != null) {
      result
        ..add('temp_kf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Main deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'feels_like':
          result.feels_like = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_min':
          result.temp_min = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temp_max':
          result.temp_max = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sea_level':
          result.sea_level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'grnd_level':
          result.grnd_level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'temp_kf':
          result.temp_kf = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.main;
    if (value != null) {
      result
        ..add('main')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CloudsSerializer implements StructuredSerializer<Clouds> {
  @override
  final Iterable<Type> types = const [Clouds, _$Clouds];
  @override
  final String wireName = 'Clouds';

  @override
  Iterable<Object?> serialize(Serializers serializers, Clouds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.all;
    if (value != null) {
      result
        ..add('all')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Clouds deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CloudsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'all':
          result.all = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WindSerializer implements StructuredSerializer<Wind> {
  @override
  final Iterable<Type> types = const [Wind, _$Wind];
  @override
  final String wireName = 'Wind';

  @override
  Iterable<Object?> serialize(Serializers serializers, Wind object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.speed;
    if (value != null) {
      result
        ..add('speed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.deg;
    if (value != null) {
      result
        ..add('deg')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gust;
    if (value != null) {
      result
        ..add('gust')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Wind deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'gust':
          result.gust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$RainSerializer implements StructuredSerializer<Rain> {
  @override
  final Iterable<Type> types = const [Rain, _$Rain];
  @override
  final String wireName = 'Rain';

  @override
  Iterable<Object?> serialize(Serializers serializers, Rain object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.h3;
    if (value != null) {

      result
        ..add('3h')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Rain deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '3h':
          result.h3 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$SysSerializer implements StructuredSerializer<Sys> {
  @override
  final Iterable<Type> types = const [Sys, _$Sys];
  @override
  final String wireName = 'Sys';

  @override
  Iterable<Object?> serialize(Serializers serializers, Sys object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.pod;
    if (value != null) {
      result
        ..add('pod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Sys deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pod':
          result.pod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CitySerializer implements StructuredSerializer<City> {
  @override
  final Iterable<Type> types = const [City, _$City];
  @override
  final String wireName = 'City';

  @override
  Iterable<Object?> serialize(Serializers serializers, City object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coord;
    if (value != null) {
      result
        ..add('coord')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Coord)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.population;
    if (value != null) {
      result
        ..add('population')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.timezone;
    if (value != null) {
      result
        ..add('timezone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sunrise;
    if (value != null) {
      result
        ..add('sunrise')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sunset;
    if (value != null) {
      result
        ..add('sunset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  City deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coord))! as Coord);
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'population':
          result.population = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$CoordSerializer implements StructuredSerializer<Coord> {
  @override
  final Iterable<Type> types = const [Coord, _$Coord];
  @override
  final String wireName = 'Coord';

  @override
  Iterable<Object?> serialize(Serializers serializers, Coord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lon;
    if (value != null) {
      result
        ..add('lon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Coord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherData extends WeatherData {
  @override
  final String? cod;
  @override
  final int? message;
  @override
  final int? cnt;
  @override
  final BuiltList<WeatherList>? list;
  @override
  final City? city;

  factory _$WeatherData([void Function(WeatherDataBuilder)? updates]) =>
      (new WeatherDataBuilder()..update(updates))._build();

  _$WeatherData._({this.cod, this.message, this.cnt, this.list, this.city})
      : super._();

  @override
  WeatherData rebuild(void Function(WeatherDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDataBuilder toBuilder() => new WeatherDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherData &&
        cod == other.cod &&
        message == other.message &&
        cnt == other.cnt &&
        list == other.list &&
        city == other.city;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cod.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, cnt.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherData')
          ..add('cod', cod)
          ..add('message', message)
          ..add('cnt', cnt)
          ..add('list', list)
          ..add('city', city))
        .toString();
  }
}

class WeatherDataBuilder implements Builder<WeatherData, WeatherDataBuilder> {
  _$WeatherData? _$v;

  String? _cod;
  String? get cod => _$this._cod;
  set cod(String? cod) => _$this._cod = cod;

  int? _message;
  int? get message => _$this._message;
  set message(int? message) => _$this._message = message;

  int? _cnt;
  int? get cnt => _$this._cnt;
  set cnt(int? cnt) => _$this._cnt = cnt;

  ListBuilder<WeatherList>? _list;
  ListBuilder<WeatherList> get list =>
      _$this._list ??= new ListBuilder<WeatherList>();
  set list(ListBuilder<WeatherList>? list) => _$this._list = list;

  CityBuilder? _city;
  CityBuilder get city => _$this._city ??= new CityBuilder();
  set city(CityBuilder? city) => _$this._city = city;

  WeatherDataBuilder();

  WeatherDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cod = $v.cod;
      _message = $v.message;
      _cnt = $v.cnt;
      _list = $v.list?.toBuilder();
      _city = $v.city?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherData;
  }

  @override
  void update(void Function(WeatherDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherData build() => _build();

  _$WeatherData _build() {
    _$WeatherData _$result;
    try {
      _$result = _$v ??
          new _$WeatherData._(
              cod: cod,
              message: message,
              cnt: cnt,
              list: _list?.build(),
              city: _city?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'city';
        _city?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherList extends WeatherList {
  @override
  final int? dt;
  @override
  final Main? main;
  @override
  final BuiltList<Weather>? weather;
  @override
  final Clouds? clouds;
  @override
  final Wind? wind;
  @override
  final int? visibility;
  @override
  final double? pop;
  @override
  final Rain? rain;
  @override
  final Sys? sys;
  @override
  final String? dt_txt;

  factory _$WeatherList([void Function(WeatherListBuilder)? updates]) =>
      (new WeatherListBuilder()..update(updates))._build();

  _$WeatherList._(
      {this.dt,
      this.main,
      this.weather,
      this.clouds,
      this.wind,
      this.visibility,
      this.pop,
      this.rain,
      this.sys,
      this.dt_txt})
      : super._();

  @override
  WeatherList rebuild(void Function(WeatherListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherListBuilder toBuilder() => new WeatherListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherList &&
        dt == other.dt &&
        main == other.main &&
        weather == other.weather &&
        clouds == other.clouds &&
        wind == other.wind &&
        visibility == other.visibility &&
        pop == other.pop &&
        rain == other.rain &&
        sys == other.sys &&
        dt_txt == other.dt_txt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dt.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jc(_$hash, wind.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, pop.hashCode);
    _$hash = $jc(_$hash, rain.hashCode);
    _$hash = $jc(_$hash, sys.hashCode);
    _$hash = $jc(_$hash, dt_txt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherList')
          ..add('dt', dt)
          ..add('main', main)
          ..add('weather', weather)
          ..add('clouds', clouds)
          ..add('wind', wind)
          ..add('visibility', visibility)
          ..add('pop', pop)
          ..add('rain', rain)
          ..add('sys', sys)
          ..add('dt_txt', dt_txt))
        .toString();
  }
}

class WeatherListBuilder implements Builder<WeatherList, WeatherListBuilder> {
  _$WeatherList? _$v;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  MainBuilder? _main;
  MainBuilder get main => _$this._main ??= new MainBuilder();
  set main(MainBuilder? main) => _$this._main = main;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather =>
      _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  CloudsBuilder? _clouds;
  CloudsBuilder get clouds => _$this._clouds ??= new CloudsBuilder();
  set clouds(CloudsBuilder? clouds) => _$this._clouds = clouds;

  WindBuilder? _wind;
  WindBuilder get wind => _$this._wind ??= new WindBuilder();
  set wind(WindBuilder? wind) => _$this._wind = wind;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  double? _pop;
  double? get pop => _$this._pop;
  set pop(double? pop) => _$this._pop = pop;

  RainBuilder? _rain;
  RainBuilder get rain => _$this._rain ??= new RainBuilder();
  set rain(RainBuilder? rain) => _$this._rain = rain;

  SysBuilder? _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder? sys) => _$this._sys = sys;

  String? _dt_txt;
  String? get dt_txt => _$this._dt_txt;
  set dt_txt(String? dt_txt) => _$this._dt_txt = dt_txt;

  WeatherListBuilder();

  WeatherListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dt = $v.dt;
      _main = $v.main?.toBuilder();
      _weather = $v.weather?.toBuilder();
      _clouds = $v.clouds?.toBuilder();
      _wind = $v.wind?.toBuilder();
      _visibility = $v.visibility;
      _pop = $v.pop;
      _rain = $v.rain?.toBuilder();
      _sys = $v.sys?.toBuilder();
      _dt_txt = $v.dt_txt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherList;
  }

  @override
  void update(void Function(WeatherListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherList build() => _build();

  _$WeatherList _build() {
    _$WeatherList _$result;
    try {
      _$result = _$v ??
          new _$WeatherList._(
              dt: dt,
              main: _main?.build(),
              weather: _weather?.build(),
              clouds: _clouds?.build(),
              wind: _wind?.build(),
              visibility: visibility,
              pop: pop,
              rain: _rain?.build(),
              sys: _sys?.build(),
              dt_txt: dt_txt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'main';
        _main?.build();
        _$failedField = 'weather';
        _weather?.build();
        _$failedField = 'clouds';
        _clouds?.build();
        _$failedField = 'wind';
        _wind?.build();

        _$failedField = 'rain';
        _rain?.build();
        _$failedField = 'sys';
        _sys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Main extends Main {
  @override
  final double? temp;
  @override
  final double? feels_like;
  @override
  final double? temp_min;
  @override
  final double? temp_max;
  @override
  final int? pressure;
  @override
  final int? sea_level;
  @override
  final int? grnd_level;
  @override
  final int? humidity;
  @override
  final double? temp_kf;

  factory _$Main([void Function(MainBuilder)? updates]) =>
      (new MainBuilder()..update(updates))._build();

  _$Main._(
      {this.temp,
      this.feels_like,
      this.temp_min,
      this.temp_max,
      this.pressure,
      this.sea_level,
      this.grnd_level,
      this.humidity,
      this.temp_kf})
      : super._();

  @override
  Main rebuild(void Function(MainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainBuilder toBuilder() => new MainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Main &&
        temp == other.temp &&
        feels_like == other.feels_like &&
        temp_min == other.temp_min &&
        temp_max == other.temp_max &&
        pressure == other.pressure &&
        sea_level == other.sea_level &&
        grnd_level == other.grnd_level &&
        humidity == other.humidity &&
        temp_kf == other.temp_kf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jc(_$hash, feels_like.hashCode);
    _$hash = $jc(_$hash, temp_min.hashCode);
    _$hash = $jc(_$hash, temp_max.hashCode);
    _$hash = $jc(_$hash, pressure.hashCode);
    _$hash = $jc(_$hash, sea_level.hashCode);
    _$hash = $jc(_$hash, grnd_level.hashCode);
    _$hash = $jc(_$hash, humidity.hashCode);
    _$hash = $jc(_$hash, temp_kf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Main')
          ..add('temp', temp)
          ..add('feels_like', feels_like)
          ..add('temp_min', temp_min)
          ..add('temp_max', temp_max)
          ..add('pressure', pressure)
          ..add('sea_level', sea_level)
          ..add('grnd_level', grnd_level)
          ..add('humidity', humidity)
          ..add('temp_kf', temp_kf))
        .toString();
  }
}

class MainBuilder implements Builder<Main, MainBuilder> {
  _$Main? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  double? _feels_like;
  double? get feels_like => _$this._feels_like;
  set feels_like(double? feels_like) => _$this._feels_like = feels_like;

  double? _temp_min;
  double? get temp_min => _$this._temp_min;
  set temp_min(double? temp_min) => _$this._temp_min = temp_min;

  double? _temp_max;
  double? get temp_max => _$this._temp_max;
  set temp_max(double? temp_max) => _$this._temp_max = temp_max;

  int? _pressure;
  int? get pressure => _$this._pressure;
  set pressure(int? pressure) => _$this._pressure = pressure;

  int? _sea_level;
  int? get sea_level => _$this._sea_level;
  set sea_level(int? sea_level) => _$this._sea_level = sea_level;

  int? _grnd_level;
  int? get grnd_level => _$this._grnd_level;
  set grnd_level(int? grnd_level) => _$this._grnd_level = grnd_level;

  int? _humidity;
  int? get humidity => _$this._humidity;
  set humidity(int? humidity) => _$this._humidity = humidity;

  double? _temp_kf;
  double? get temp_kf => _$this._temp_kf;
  set temp_kf(double? temp_kf) => _$this._temp_kf = temp_kf;

  MainBuilder();

  MainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _feels_like = $v.feels_like;
      _temp_min = $v.temp_min;
      _temp_max = $v.temp_max;
      _pressure = $v.pressure;
      _sea_level = $v.sea_level;
      _grnd_level = $v.grnd_level;
      _humidity = $v.humidity;
      _temp_kf = $v.temp_kf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Main other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Main;
  }

  @override
  void update(void Function(MainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Main build() => _build();

  _$Main _build() {
    final _$result = _$v ??
        new _$Main._(
            temp: temp,
            feels_like: feels_like,
            temp_min: temp_min,
            temp_max: temp_max,
            pressure: pressure,
            sea_level: sea_level,
            grnd_level: grnd_level,
            humidity: humidity,
            temp_kf: temp_kf);
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates))._build();

  _$Weather._({this.id, this.main, this.description, this.icon}) : super._();

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Weather')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Weather build() => _build();

  _$Weather _build() {
    final _$result = _$v ??
        new _$Weather._(
            id: id, main: main, description: description, icon: icon);
    replace(_$result);
    return _$result;
  }
}

class _$Clouds extends Clouds {
  @override
  final int? all;

  factory _$Clouds([void Function(CloudsBuilder)? updates]) =>
      (new CloudsBuilder()..update(updates))._build();

  _$Clouds._({this.all}) : super._();

  @override
  Clouds rebuild(void Function(CloudsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudsBuilder toBuilder() => new CloudsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Clouds && all == other.all;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, all.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Clouds')..add('all', all)).toString();
  }
}

class CloudsBuilder implements Builder<Clouds, CloudsBuilder> {
  _$Clouds? _$v;

  int? _all;
  int? get all => _$this._all;
  set all(int? all) => _$this._all = all;

  CloudsBuilder();

  CloudsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Clouds other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Clouds;
  }

  @override
  void update(void Function(CloudsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Clouds build() => _build();

  _$Clouds _build() {
    final _$result = _$v ?? new _$Clouds._(all: all);
    replace(_$result);
    return _$result;
  }
}

class _$Wind extends Wind {
  @override
  final double? speed;
  @override
  final int? deg;
  @override
  final double? gust;

  factory _$Wind([void Function(WindBuilder)? updates]) =>
      (new WindBuilder()..update(updates))._build();

  _$Wind._({this.speed, this.deg, this.gust}) : super._();

  @override
  Wind rebuild(void Function(WindBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindBuilder toBuilder() => new WindBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Wind &&
        speed == other.speed &&
        deg == other.deg &&
        gust == other.gust;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, deg.hashCode);
    _$hash = $jc(_$hash, gust.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Wind')
          ..add('speed', speed)
          ..add('deg', deg)
          ..add('gust', gust))
        .toString();
  }
}

class WindBuilder implements Builder<Wind, WindBuilder> {
  _$Wind? _$v;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  int? _deg;
  int? get deg => _$this._deg;
  set deg(int? deg) => _$this._deg = deg;

  double? _gust;
  double? get gust => _$this._gust;
  set gust(double? gust) => _$this._gust = gust;

  WindBuilder();

  WindBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _speed = $v.speed;
      _deg = $v.deg;
      _gust = $v.gust;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Wind other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Wind;
  }

  @override
  void update(void Function(WindBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Wind build() => _build();

  _$Wind _build() {
    final _$result = _$v ?? new _$Wind._(speed: speed, deg: deg, gust: gust);
    replace(_$result);
    return _$result;
  }
}

class _$Rain extends Rain {
  @override
  final double? h3;

  factory _$Rain([void Function(RainBuilder)? updates]) =>
      (new RainBuilder()..update(updates))._build();

  _$Rain._({this.h3}) : super._();

  @override
  Rain rebuild(void Function(RainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RainBuilder toBuilder() => new RainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Rain && h3 == other.h3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, h3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Rain')..add('3h', h3)).toString();
  }
}

class RainBuilder implements Builder<Rain, RainBuilder> {
  _$Rain? _$v;

  double? _h3;
  double? get h3 => _$this._h3;
  set h3(double? h3) => _$this._h3 = h3;

  RainBuilder();

  RainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _h3 = $v.h3;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Rain other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Rain;
  }

  @override
  void update(void Function(RainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Rain build() => _build();

  _$Rain _build() {
    final _$result = _$v ?? new _$Rain._(h3: h3);
    replace(_$result);
    return _$result;
  }
}

class _$Sys extends Sys {
  @override
  final String? pod;

  factory _$Sys([void Function(SysBuilder)? updates]) =>
      (new SysBuilder()..update(updates))._build();

  _$Sys._({this.pod}) : super._();

  @override
  Sys rebuild(void Function(SysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysBuilder toBuilder() => new SysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sys && pod == other.pod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Sys')..add('pod', pod)).toString();
  }
}

class SysBuilder implements Builder<Sys, SysBuilder> {
  _$Sys? _$v;

  String? _pod;
  String? get pod => _$this._pod;
  set pod(String? pod) => _$this._pod = pod;

  SysBuilder();

  SysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pod = $v.pod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sys other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Sys;
  }

  @override
  void update(void Function(SysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Sys build() => _build();

  _$Sys _build() {
    final _$result = _$v ?? new _$Sys._(pod: pod);
    replace(_$result);
    return _$result;
  }
}

class _$City extends City {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final Coord? coord;
  @override
  final String? country;
  @override
  final int? population;
  @override
  final int? timezone;
  @override
  final int? sunrise;
  @override
  final int? sunset;

  factory _$City([void Function(CityBuilder)? updates]) =>
      (new CityBuilder()..update(updates))._build();

  _$City._(
      {this.id,
      this.name,
      this.coord,
      this.country,
      this.population,
      this.timezone,
      this.sunrise,
      this.sunset})
      : super._();

  @override
  City rebuild(void Function(CityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityBuilder toBuilder() => new CityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is City &&
        id == other.id &&
        name == other.name &&
        coord == other.coord &&
        country == other.country &&
        population == other.population &&
        timezone == other.timezone &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, coord.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, population.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, sunrise.hashCode);
    _$hash = $jc(_$hash, sunset.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'City')
          ..add('id', id)
          ..add('name', name)
          ..add('coord', coord)
          ..add('country', country)
          ..add('population', population)
          ..add('timezone', timezone)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset))
        .toString();
  }
}

class CityBuilder implements Builder<City, CityBuilder> {
  _$City? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CoordBuilder? _coord;
  CoordBuilder get coord => _$this._coord ??= new CoordBuilder();
  set coord(CoordBuilder? coord) => _$this._coord = coord;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _population;
  int? get population => _$this._population;
  set population(int? population) => _$this._population = population;

  int? _timezone;
  int? get timezone => _$this._timezone;
  set timezone(int? timezone) => _$this._timezone = timezone;

  int? _sunrise;
  int? get sunrise => _$this._sunrise;
  set sunrise(int? sunrise) => _$this._sunrise = sunrise;

  int? _sunset;
  int? get sunset => _$this._sunset;
  set sunset(int? sunset) => _$this._sunset = sunset;

  CityBuilder();

  CityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _coord = $v.coord?.toBuilder();
      _country = $v.country;
      _population = $v.population;
      _timezone = $v.timezone;
      _sunrise = $v.sunrise;
      _sunset = $v.sunset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(City other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$City;
  }

  @override
  void update(void Function(CityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  City build() => _build();

  _$City _build() {
    _$City _$result;
    try {
      _$result = _$v ??
          new _$City._(
              id: id,
              name: name,
              coord: _coord?.build(),
              country: country,
              population: population,
              timezone: timezone,
              sunrise: sunrise,
              sunset: sunset);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coord';
        _coord?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'City', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Coord extends Coord {
  @override
  final double? lat;
  @override
  final double? lon;

  factory _$Coord([void Function(CoordBuilder)? updates]) =>
      (new CoordBuilder()..update(updates))._build();

  _$Coord._({this.lat, this.lon}) : super._();

  @override
  Coord rebuild(void Function(CoordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordBuilder toBuilder() => new CoordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coord && lat == other.lat && lon == other.lon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Coord')
          ..add('lat', lat)
          ..add('lon', lon))
        .toString();
  }
}

class CoordBuilder implements Builder<Coord, CoordBuilder> {
  _$Coord? _$v;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  CoordBuilder();

  CoordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lat = $v.lat;
      _lon = $v.lon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Coord;
  }

  @override
  void update(void Function(CoordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Coord build() => _build();

  _$Coord _build() {
    final _$result = _$v ?? new _$Coord._(lat: lat, lon: lon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
