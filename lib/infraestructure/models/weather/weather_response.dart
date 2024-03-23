import '../../../domain/entities/weather.dart';

class WeatherResponse {
  final double? latitude;
  final double? longitude;
  final double? generationtimeMs;
  final int? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final double? elevation;
  final Daily? daily;

  WeatherResponse({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
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
          daily: json["daily"] == null ? null : Daily.fromJson(json));

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "generationtime_ms": generationtimeMs,
        "utc_offset_seconds": utcOffsetSeconds,
        "timezone": timezone,
        "timezone_abbreviation": timezoneAbbreviation,
        "elevation": elevation,
        "daily": daily,
      };
}

// class DailyResponse {
//   final List<String>? time;
//   final List<int>? precipitationProbabilityMax;

//   DailyResponse({
//     this.time,
//     this.precipitationProbabilityMax,
//   });

//   factory DailyResponse.fromJson(Map<String, dynamic> json) {
//     return DailyResponse(
//       time: json['time'] != null ? List<String>.from(json['time']) : null,
//       precipitationProbabilityMax: json['precipitation_probability_max'] != null
//           ? List<int>.from(json['precipitation_probability_max'])
//           : null,
//     );
//   }
// }
