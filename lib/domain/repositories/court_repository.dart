import '../entities/courts.dart';
import '../entities/movies.dart';

abstract class CourtsRepository {
  Future<List<Courts>> getCourts({int page = 1});
  Future<List<Courts>> getWeather({int page = 1});
}
