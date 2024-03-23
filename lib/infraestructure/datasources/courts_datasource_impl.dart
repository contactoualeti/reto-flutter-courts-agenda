import 'package:dio/dio.dart';
import 'package:tennis_court_scheduling/domain/entities/courts.dart';

import '../../domain/datasources/courts_datasource.dart';

class CourtDatasourceImpl extends CourtsDatasource {
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
}
