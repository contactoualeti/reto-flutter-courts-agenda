import 'package:tennis_court_scheduling/domain/datasources/local_storage_datasource.dart';
import 'package:tennis_court_scheduling/domain/entities/courts.dart';
import 'package:tennis_court_scheduling/domain/entities/courtsSchedule.dart';
import 'package:tennis_court_scheduling/domain/repositories/local_storage_repository.dart';
import 'package:tennis_court_scheduling/infraestructure/datasources/local_storage_datasource_impl.dart';

class LocalStorageRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource localStorageDatasource;

  LocalStorageRepositoryImpl([LocalStorageDatasource? localStorageDatasource])
      : localStorageDatasource =
            localStorageDatasource ?? LocalStorageDatasourceImpl();

  @override
  Future<void> buildStarterCourts() {
    return localStorageDatasource.buildStarterCourts();
  }

  @override
  Future<List<Courts>> getAllCourts() {
    return localStorageDatasource.getAllCourts();
  }

  @override
  Future<void> saveCourtSchedule(String name, String date, String court) {
    return localStorageDatasource.saveCourtSchedule(name, date, court);
  }

  @override
  Future<List<CourtsSchedule>> getAllCourtsScheduled() {
    return localStorageDatasource.getAllCourtsScheduled();
  }
}
