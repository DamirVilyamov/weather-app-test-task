import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_test_task/models/weather.dart';

part 'hourly_forecast.g.dart';

@JsonSerializable()
class HourlyForecast {
  HourlyForecast();

  factory HourlyForecast.fromJson(Map<String, dynamic> json) =>
      _$HourlyForecastFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyForecastToJson(this);

  @JsonKey(name: "dt")
  late int dt;

  @JsonKey(name: "temp")
  late double temp;

  @JsonKey(name: "feels_like")
  late double feelsLike;

  @JsonKey(name: "pressure")
  late int pressure;

  @JsonKey(name: "humidity")
  late double humidity;

  @JsonKey(name: "dew_point")
  late double dewPoint;

  @JsonKey(name: "uvi")
  late double uvi;

  @JsonKey(name: "clouds")
  late int clouds;

  @JsonKey(name: "visibility")
  late int visibility;

  @JsonKey(name: "wind_speed")
  late double windSpeed;

  @JsonKey(name: "wind_deg")
  late int windDeg;

  @JsonKey(name: "wind_gust")
  late double windGust;

  @JsonKey(name: "weather")
  late List<Weather> weatherList;

  @JsonKey(name: "pop")
  late double pop;
}
