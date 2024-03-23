import '../../domain/datasources/weather_datasource.dart';
import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weater_datasource_impl.dart';

class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherDatasource weatherDatasource;

  WeatherRepositoryImpl([WeatherDatasource? weatherDatasource])
      : weatherDatasource = weatherDatasource ?? WeatherDatasourceImpl();

  @override
  Future<Weather> getWeather(String date) {
    return weatherDatasource.getWeather(date);
  }
}
