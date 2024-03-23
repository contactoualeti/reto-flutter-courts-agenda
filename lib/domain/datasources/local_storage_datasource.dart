import 'package:tennis_court_scheduling/domain/entities/courts.dart';
import 'package:tennis_court_scheduling/domain/entities/courtsSchedule.dart';

abstract class LocalStorageDatasource {
  Future<void> buildStarterCourts();
  Future<List<Courts>> getAllCourts();
  Future<void> saveCourtSchedule(String name, String date, String court);
  Future<List<CourtsSchedule>> getAllCourtsScheduled();
}
