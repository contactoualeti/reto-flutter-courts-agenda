import 'package:dio/dio.dart';
import 'package:tennis_court_scheduling/domain/entities/courts.dart';
import 'package:tennis_court_scheduling/infraestructure/models/weather/weather_response.dart';

import '../../domain/datasources/courts_datasource.dart';
import '../../domain/entities/weather.dart';
import '../mappers/weather_mapper.dart';

class WeatherDatasource extends CourtsDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.open-meteo.com/v1/', queryParameters: {
    'latitude': 2.52,
    'longitude': 13.41,
    'current': 'temperature_2m,precipitation,rain,wind_speed_10m',
    'daily': 'precipitation_probability_max',
    'timezone': 'America/New_York'
//start_date=2024-03-19&end_date=2024-03-19
  }));

  @override
  Future<List<Courts>> getCourts({int page = 1}) async {
    return [];
  }

  @override
  Future<Weather> getWeather({int page = 1}) async {
    final response = await dio.get('forecast?');
    final WeatherResponse weatherResponse =
        WeatherResponse.fromJson(response.data);
    final weather = WeaterMapper.weatherToEntity(weatherResponse);
    return weather;
  }
}
