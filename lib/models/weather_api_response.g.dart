// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResponse _$WeatherApiResponseFromJson(Map<String, dynamic> json) =>
    WeatherApiResponse()
      ..lat = (json['lat'] as num).toDouble()
      ..lon = (json['lon'] as num).toDouble()
      ..timezone = json['timezone'] as String
      ..timezoneOffset = json['timezone_offset'] as int
      ..currentWeather =
          CurrentWeather.fromJson(json['current'] as Map<String, dynamic>)
      ..hourlyForecastList = (json['hourly'] as List<dynamic>)
          .map((e) => HourlyForecast.fromJson(e as Map<String, dynamic>))
          .toList()
      ..dailyForecastList = (json['daily'] as List<dynamic>)
          .map((e) => DailyForecast.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$WeatherApiResponseToJson(WeatherApiResponse instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'current': instance.currentWeather,
      'hourly': instance.hourlyForecastList,
      'daily': instance.dailyForecastList,
    };
