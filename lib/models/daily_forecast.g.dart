// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyForecast _$DailyForecastFromJson(Map<String, dynamic> json) =>
    DailyForecast()
      ..dt = json['dt'] as int
      ..sunrise = json['sunrise'] as int
      ..sunset = json['sunset'] as int
      ..moonrise = json['moonrise'] as int
      ..moonset = json['moonset'] as int
      ..moonPhase = (json['moon_phase'] as num).toDouble()
      ..temp = Temperature.fromJson(json['temp'] as Map<String, dynamic>)
      ..feelsLike = TemperatureFeelsLike.fromJson(
          json['feels_like'] as Map<String, dynamic>)
      ..pressure = json['pressure'] as int
      ..humidity = json['humidity'] as int
      ..dewPoint = (json['dew_point'] as num).toDouble()
      ..windSpeed = (json['wind_speed'] as num).toDouble()
      ..windDeg = json['wind_deg'] as int
      ..windGust = (json['wind_gust'] as num).toDouble()
      ..weatherList = (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList()
      ..clouds = json['clouds'] as int
      ..pop = (json['pop'] as num).toDouble()
      ..rain = (json['rain'] as num?)?.toDouble()
      ..uvi = (json['uvi'] as num).toDouble();

Map<String, dynamic> _$DailyForecastToJson(DailyForecast instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weatherList,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
      'uvi': instance.uvi,
    };

Temperature _$TemperatureFromJson(Map<String, dynamic> json) => Temperature()
  ..day = (json['day'] as num).toDouble()
  ..min = (json['min'] as num).toDouble()
  ..max = (json['max'] as num).toDouble()
  ..night = (json['night'] as num).toDouble()
  ..eve = (json['eve'] as num).toDouble()
  ..morn = (json['morn'] as num).toDouble();

Map<String, dynamic> _$TemperatureToJson(Temperature instance) =>
    <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

TemperatureFeelsLike _$TemperatureFeelsLikeFromJson(
        Map<String, dynamic> json) =>
    TemperatureFeelsLike()
      ..day = (json['day'] as num).toDouble()
      ..night = (json['night'] as num).toDouble()
      ..eve = (json['eve'] as num).toDouble()
      ..morn = (json['morn'] as num).toDouble();

Map<String, dynamic> _$TemperatureFeelsLikeToJson(
        TemperatureFeelsLike instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
