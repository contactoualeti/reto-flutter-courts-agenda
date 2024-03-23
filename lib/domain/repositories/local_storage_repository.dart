import 'package:tennis_court_scheduling/domain/entities/courtsSchedule.dart';

import '../entities/courts.dart';

abstract class LocalStorageRepository {
  Future<void> buildStarterCourts();
  Future<List<Courts>> getAllCourts();
  Future<void> saveCourtSchedule(String name, String date, String court);
  Future<List<CourtsSchedule>> getAllCourtsScheduled();
}
