import '../entities/courts.dart';

abstract class LocalStorageRepository {
  Future<void> buildStarterCourts();
  Future<List<Courts>> getAllCourts();
}
