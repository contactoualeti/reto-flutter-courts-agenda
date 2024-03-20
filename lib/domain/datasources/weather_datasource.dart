import 'package:tennis_court_scheduling/domain/entities/courts.dart';

import '../entities/weather.dart';

abstract class CourtsDatasource {
  Future<List<Courts>> getCourts({int page = 1});
  Future<Weather> getWeather({int page = 1});
}
