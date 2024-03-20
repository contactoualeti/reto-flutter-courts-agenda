class DailyUnits {
  final String? time;
  final String? precipitationProbabilityMax;

  DailyUnits({
    this.time,
    this.precipitationProbabilityMax,
  });

  factory DailyUnits.fromJson(Map<String, dynamic> json) => DailyUnits(
        time: json["time"],
        precipitationProbabilityMax: json["precipitation_probability_max"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "precipitation_probability_max": precipitationProbabilityMax,
      };
}
