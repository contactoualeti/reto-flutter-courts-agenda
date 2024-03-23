import 'package:tennis_court_scheduling/domain/entities/courts.dart';

abstract class LocalStorageDatasource {
  Future<void> buildStarterCourts();
  Future<List<Courts>> getAllCourts();
}
