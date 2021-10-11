import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app_test_task/models/weather.dart';

part 'current_weather.g.dart';

@JsonSerializable()
class CurrentWeather {
  CurrentWeather();

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);

  @JsonKey(name: "temp")
  late double temp;

  @JsonKey(name: "feels_like")
  late double feelsLike;

  @JsonKey(name: "pressure")
  late double pressure;

  @JsonKey(name: "humidity")
  late double humidity;

  @JsonKey(name: "clouds")
  late double clouds;

  @JsonKey(name: "wind_speed")
  late double windSpeed;

  @JsonKey(name: "weather")
  late List<Weather> weatherList;
}
