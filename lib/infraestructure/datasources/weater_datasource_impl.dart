import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tennis_court_scheduling/infraestructure/models/weather/weather_response.dart';

import '../../domain/datasources/weather_datasource.dart';
import '../../domain/entities/weather.dart';
import '../errors/auth_error.dart';
import '../mappers/weather_mapper.dart';

class WeatherDatasourceImpl extends WeatherDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.open-meteo.com/v1/', queryParameters: {
    'latitude': 2.52,
    'longitude': 13.41,
    'current': 'temperature_2m,precipitation,rain,wind_speed_10m',
    'daily': 'precipitation_probability_max',
    'timezone': 'America/New_York'
  }));
  @override
  Future<Weather> getWeather(String date) async {
    try {
      final response =
          await dio.get('forecast?start_date=$date&end_date=$date');
      final WeatherResponse weatherResponse =
          WeatherResponse.fromJson(response.data);
      final weather = WeaterMapper.weatherToEntity(weatherResponse);
      return weather;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError('Credenciales no validas');
      }
      if (e.type == DioException.connectionTimeout) {
        throw CustomError('Revisar conexión a internet');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  T convertStringToModel<T>(
      T Function(Map<String, dynamic> map) fromJson, String response) {
    return fromJson((jsonDecode(response) as Map).cast());
  }

// used with http for conver a List of value
  List<T> convertStringListToModel<T>(
      T Function(Map<String, dynamic> map) fromJson, String response) {
    return (jsonDecode(response) as List)
        .map((e) => fromJson((e as Map).cast()))
        .toList();
  }

// used with dio for convert a single value
  T convertMapToModel<T>(
      T Function(Map<String, dynamic> map) fromJson, Map response) {
    return fromJson((response).cast());
  }

// used with dio for convert a List of value
  List<T> convertListToModel<T>(
      T Function(Map<String, dynamic> map) fromJson, List data) {
    return data.map((e) => fromJson((e as Map).cast())).toList();
  }
}
