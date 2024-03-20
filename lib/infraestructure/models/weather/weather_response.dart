import '../../../domain/entities/weather.dart';

class WeatherResponse {
  final double? latitude;
  final double? longitude;
  final double? generationtimeMs;
  final int? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final int? elevation;
  CurrentUnits currentUnits;
  final Current? current;
  final DailyUnits? dailyUnits;
  final Daily? daily;

  WeatherResponse({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    required this.currentUnits,
    this.current,
    this.dailyUnits,
    this.daily,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      WeatherResponse(
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        generationtimeMs: json["generationtime_ms"]?.toDouble(),
        utcOffsetSeconds: json["utc_offset_seconds"],
        timezone: json["timezone"],
        timezoneAbbreviation: json["timezone_abbreviation"],
        elevation: json["elevation"],
        currentUnits: json["current_units"],
        current: json["current"],
        dailyUnits: json["daily_units"],
        daily: json["daily"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "generationtime_ms": generationtimeMs,
        "utc_offset_seconds": utcOffsetSeconds,
        "timezone": timezone,
        "timezone_abbreviation": timezoneAbbreviation,
        "elevation": elevation,
        "current_units": currentUnits,
        "current": current,
        "daily_units": dailyUnits,
        "daily": daily,
      };
}
