// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyForecast _$HourlyForecastFromJson(Map<String, dynamic> json) =>
    HourlyForecast()
      ..dt = json['dt'] as int
      ..temp = (json['temp'] as num).toDouble()
      ..feelsLike = (json['feels_like'] as num).toDouble()
      ..pressure = json['pressure'] as int
      ..humidity = (json['humidity'] as num).toDouble()
      ..dewPoint = (json['dew_point'] as num).toDouble()
      ..uvi = (json['uvi'] as num).toDouble()
      ..clouds = json['clouds'] as int
      ..visibility = json['visibility'] as int
      ..windSpeed = (json['wind_speed'] as num).toDouble()
      ..windDeg = json['wind_deg'] as int
      ..windGust = (json['wind_gust'] as num).toDouble()
      ..weatherList = (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList()
      ..pop = (json['pop'] as num).toDouble();

Map<String, dynamic> _$HourlyForecastToJson(HourlyForecast instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weatherList,
      'pop': instance.pop,
    };
