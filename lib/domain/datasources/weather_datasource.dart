import '../entities/weather.dart';

abstract class WeatherDatasource {
  Future<Weather> getWeather(String date);
}
