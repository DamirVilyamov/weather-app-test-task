import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_test_task/models/current_weather.dart';
import 'package:weather_app_test_task/models/daily_forecast.dart';
import 'package:weather_app_test_task/models/hourly_forecast.dart';

part 'weather_api_response.g.dart';

@JsonSerializable()
class WeatherApiResponse {
  WeatherApiResponse();

  @JsonKey(name: "lat")
  late double lat;

  @JsonKey(name: "lon")
  late double lon;

  @JsonKey(name: "timezone")
  late String timezone;

  @JsonKey(name: "timezone_offset")
  late int timezoneOffset;

  @JsonKey(name: "current")
  late CurrentWeather currentWeather;

  @JsonKey(name: "hourly")
  late List<HourlyForecast> hourlyForecastList;

  @JsonKey(name: "daily")
  late List<DailyForecast> dailyForecastList;

  factory WeatherApiResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherApiResponseToJson(this);
}
