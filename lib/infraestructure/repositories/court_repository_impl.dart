import 'package:tennis_court_scheduling/domain/datasources/courts_datasource.dart';
import 'package:tennis_court_scheduling/domain/entities/courts.dart';
import 'package:tennis_court_scheduling/infraestructure/datasources/courts_datasource_impl.dart';
import '../../domain/repositories/court_repository.dart';

class CourtsRepositoryImpl extends CourtsRepository {
  final CourtsDatasource courtsDatasource;

  CourtsRepositoryImpl([CourtsDatasource? courtsDatasource])
      : courtsDatasource = courtsDatasource ?? CourtDatasourceImpl();

  @override
  Future<List<Courts>> getCourts({int page = 1}) {
    return courtsDatasource.getCourts(page: page);
  }
}
