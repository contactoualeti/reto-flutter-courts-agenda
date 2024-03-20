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

  factory CurrentUnits.fromJson(Map<String, dynamic> json) => CurrentUnits(
        time: json["time"],
        interval: json["interval"],
        temperature2M: json["temperature_2m"],
        precipitation: json["precipitation"],
        rain: json["rain"],
        windSpeed10M: json["wind_speed_10m"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "interval": interval,
        "temperature_2m": temperature2M,
        "precipitation": precipitation,
        "rain": rain,
        "wind_speed_10m": windSpeed10M,
      };
}
