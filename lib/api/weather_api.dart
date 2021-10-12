import 'package:dio/dio.dart';
import 'package:location/location.dart';

class WeatherApi {
  static const apiKey = "f987340d2a39675e34d1dfcd1b209344";
  static const oneCallApiBaseUrl = 'https://api.openweathermap.org/data/2.5';
  static const unnecessaryApiFields = 'minutely,alerts';
  static const dailyForecastDaysCount = 16;

  final baseOptions = BaseOptions(
    baseUrl: oneCallApiBaseUrl,
    queryParameters: {"appid": apiKey},
  );

  late final Dio _dio;

  WeatherApi._() {
    _dio = Dio(baseOptions);
    _dio.interceptors.add(CustomInterceptors());
  }

  static final WeatherApi _instance = WeatherApi._();

  factory WeatherApi() {
    return _instance;
  }

  Future<Response<Map<String, dynamic>>> getOneCallApiResponse(
      LocationData locationData) async {
    final parameters = {
      "lat": "${locationData.latitude}",
      "lon": "${locationData.longitude}",
      "exclude": unnecessaryApiFields,
    };
    return await _dio.get("/onecall", queryParameters: parameters);
  }
}

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    return super.onError(err, handler);
  }
}
