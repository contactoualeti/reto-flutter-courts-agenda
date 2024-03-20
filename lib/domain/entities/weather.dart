class Weather {
  final double? latitude;
  final double? longitude;
  final double? generationtimeMs;
  final int? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final int? elevation;
  final CurrentUnits? currentUnits;
  final Current? current;
  final DailyUnits? dailyUnits;
  final Daily? daily;

  Weather({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.currentUnits,
    this.current,
    this.dailyUnits,
    this.daily,
  });
}

class Current {
  final String? time;
  final int? interval;
  final double? temperature2M;
  final int? precipitation;
  final int? rain;
  final double? windSpeed10M;

  Current({
    this.time,
    this.interval,
    this.temperature2M,
    this.precipitation,
    this.rain,
    this.windSpeed10M,
  });
}

class CurrentUnits {
  final String? time;
  final String? interval;
  final String? temperature2M;
  final String? precipitation;
  final String? rain;
  final String? windSpeed10M;

  CurrentUnits({
    this.time,
    this.interval,
    this.temperature2M,
    this.precipitation,
    this.rain,
    this.windSpeed10M,
  });
}

class Daily {
  final List<DateTime>? time;
  final List<int>? precipitationProbabilityMax;

  Daily({
    this.time,
    this.precipitationProbabilityMax,
  });
}

class DailyUnits {
  final String? time;
  final String? precipitationProbabilityMax;

  DailyUnits({
    this.time,
    this.precipitationProbabilityMax,
  });
}
