class Current {
  Current({
    required this.time,
    required this.interval,
    required this.temperature2M,
    required this.precipitation,
    required this.rain,
    required this.windSpeed10M,
  });
  final String? time;
  final int? interval;
  final double? temperature2M;
  final int? precipitation;
  final int? rain;
  final double? windSpeed10M;

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        time: json["time"],
        interval: json["interval"],
        temperature2M: json["temperature_2m"]?.toDouble(),
        precipitation: json["precipitation"],
        rain: json["rain"],
        windSpeed10M: json["wind_speed_10m"]?.toDouble(),
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
