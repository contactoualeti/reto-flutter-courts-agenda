import '../entities/courts.dart';

abstract class MovieRepository {
  Future<List<Courts>> getNowPlaying({int page = 1});
  Future<List<Courts>> getCourts({int page = 1});
}
