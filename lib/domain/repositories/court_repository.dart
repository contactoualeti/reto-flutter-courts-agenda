import '../entities/courts.dart';

abstract class CourtsRepository {
  Future<List<Courts>> getCourts({int page = 1});
}
