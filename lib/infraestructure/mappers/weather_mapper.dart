import '../../domain/entities/weather.dart';
import '../models/weather/weather_response.dart';

class WeaterMapper {
  static Weather weatherToEntity(WeatherResponse weatherResponse) => Weather(
      latitude: weatherResponse.latitude,
      longitude: weatherResponse.longitude,
      generationtimeMs: weatherResponse.generationtimeMs,
      utcOffsetSeconds: weatherResponse.utcOffsetSeconds,
      timezone: weatherResponse.timezone,
      timezoneAbbreviation: weatherResponse.timezoneAbbreviation,
      elevation: weatherResponse.elevation,
      currentUnits: weatherResponse.currentUnits,
      current: weatherResponse.current,
      dailyUnits: weatherResponse.dailyUnits,
      daily: weatherResponse.daily);
}
