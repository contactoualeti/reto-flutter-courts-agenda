import 'package:flutter/material.dart';

class Weather {
  final double? latitude;
  final double? longitude;
  final double? generationtimeMs;
  final int? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final double? elevation;
  final Daily daily;

  Weather({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    required this.daily,
  });
}

class Daily {
  final List<DateTime>? time;
  final List<int>? precipitation_probability_max;

  Daily({
    this.time,
    this.precipitation_probability_max,
  });

  factory Daily.fromJson(Map<String, dynamic> json) {
    return Daily(
        time: [DateTime.now()],
        precipitation_probability_max:
            List<int>.from(json['daily']['precipitation_probability_max']));
  }
}
