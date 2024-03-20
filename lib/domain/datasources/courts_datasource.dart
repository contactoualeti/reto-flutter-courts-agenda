import 'package:tennis_court_scheduling/domain/entities/courts.dart';

abstract class CourtsDatasource {
  Future<List<Courts>> getCourts({int page = 1});
}
