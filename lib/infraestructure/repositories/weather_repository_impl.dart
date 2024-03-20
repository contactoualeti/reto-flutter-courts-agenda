import 'package:tennis_court_scheduling/infraestructure/datasources/courts_datasource_impl.dart';
import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherDatasource datasource;

  WeatherRepositoryImpl(this.datasource);

  @override
  Future<Weather> getWeather({int page = 1}) {
    return datasource.getWeather(page: page);
  }
}
