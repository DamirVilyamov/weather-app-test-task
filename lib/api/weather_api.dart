import 'package:dio/dio.dart';

class WeatherApi {
  static const apiKey = "f987340d2a39675e34d1dfcd1b209344";
  static const baseUrl = 'http://api.openweathermap.org/data/2.5/weather';
  static const oneCallApiBaseUrl = 'https://api.openweathermap.org/data/2.5';
  static const unnecessaryApiFields = 'minutely,alerts';
  static const defaultCityLat = 50.45;
  static const defaultCityLon = 30.52;
  static const dailyForecastDaysCount = 16;

  final baseOptions = BaseOptions(
      baseUrl: oneCallApiBaseUrl, queryParameters: {"appid": apiKey});
  late final Dio _dio;

  WeatherApi() {
    _dio = Dio(baseOptions);
  }

  Future<Response<Map<String, dynamic>>> getOneCallApiResponse({
    double cityLat = defaultCityLat,
    double cityLon = defaultCityLon,
  }) async {
    final parameters = {
      "lat": "$cityLat",
      "lon": "$cityLon",
      "exclude": unnecessaryApiFields,
    };
    return await _dio.get("/onecall", queryParameters: parameters);
  }
}
