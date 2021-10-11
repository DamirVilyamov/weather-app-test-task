// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    CurrentWeather()
      ..temp = (json['temp'] as num).toDouble()
      ..feelsLike = (json['feels_like'] as num).toDouble()
      ..pressure = (json['pressure'] as num).toDouble()
      ..humidity = (json['humidity'] as num).toDouble()
      ..clouds = (json['clouds'] as num).toDouble()
      ..windSpeed = (json['wind_speed'] as num).toDouble()
      ..weatherList = (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CurrentWeatherToJson(CurrentWeather instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'clouds': instance.clouds,
      'wind_speed': instance.windSpeed,
      'weather': instance.weatherList,
    };
