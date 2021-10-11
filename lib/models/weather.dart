import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  Weather();

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);

  @JsonKey(name: "id")
  late int id;

  @JsonKey(name: "main")
  late String main;

  @JsonKey(name: "description")
  late String description;

  @JsonKey(name: "icon")
  late String icon;
}
