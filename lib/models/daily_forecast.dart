import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_test_task/models/weather.dart';

part 'daily_forecast.g.dart';

@JsonSerializable()
class DailyForecast {
  DailyForecast();

  factory DailyForecast.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastFromJson(json);

  Map<String, dynamic> toJson() => _$DailyForecastToJson(this);

  @JsonKey(name: "dt")
  late int dt;

  @JsonKey(name: "sunrise")
  late int sunrise;

  @JsonKey(name: "sunset")
  late int sunset;

  @JsonKey(name: "moonrise")
  late int moonrise;

  @JsonKey(name: "moonset")
  late int moonset;

  @JsonKey(name: "moon_phase")
  late double moonPhase;

  @JsonKey(name: "temp")
  late Temperature temp;

  @JsonKey(name: "feels_like")
  late TemperatureFeelsLike feelsLike;

  @JsonKey(name: "pressure")
  late int pressure;

  @JsonKey(name: "humidity")
  late int humidity;

  @JsonKey(name: "dew_point")
  late double dewPoint;

  @JsonKey(name: "wind_speed")
  late double windSpeed;

  @JsonKey(name: "wind_deg")
  late int windDeg;

  @JsonKey(name: "wind_gust")
  late double windGust;

  @JsonKey(name: "weather")
  late List<Weather> weatherList;

  @JsonKey(name: "clouds")
  late int clouds;

  @JsonKey(name: "pop")
  late double pop;

  @JsonKey(name: "rain")
  late double? rain;

  @JsonKey(name: "uvi")
  late double uvi;
}

@JsonSerializable()
class Temperature {
  Temperature();

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);

  Map<String, dynamic> toJson() => _$TemperatureToJson(this);

  @JsonKey(name: "day")
  late double day;

  @JsonKey(name: "min")
  late double min;

  @JsonKey(name: "max")
  late double max;

  @JsonKey(name: "night")
  late double night;

  @JsonKey(name: "eve")
  late double eve;

  @JsonKey(name: "morn")
  late double morn;
}

@JsonSerializable()
class TemperatureFeelsLike {
  TemperatureFeelsLike();

  factory TemperatureFeelsLike.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFeelsLikeFromJson(json);

  Map<String, dynamic> toJson() => _$TemperatureFeelsLikeToJson(this);

  @JsonKey(name: "day")
  late double day;

  @JsonKey(name: "night")
  late double night;

  @JsonKey(name: "eve")
  late double eve;

  @JsonKey(name: "morn")
  late double morn;
}
