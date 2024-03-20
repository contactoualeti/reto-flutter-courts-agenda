class Daily {
  final List<DateTime>? time;
  final List<int>? precipitationProbabilityMax;

  Daily({
    this.time,
    this.precipitationProbabilityMax,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
        time: json["time"] == null
            ? []
            : List<DateTime>.from(json["time"]!.map((x) => DateTime.parse(x))),
        precipitationProbabilityMax:
            json["precipitation_probability_max"] == null
                ? []
                : List<int>.from(
                    json["precipitation_probability_max"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "time": time == null
            ? []
            : List<dynamic>.from(time!.map((x) =>
                "${x.year.toString().padLeft(4, '0')}-${x.month.toString().padLeft(2, '0')}-${x.day.toString().padLeft(2, '0')}")),
        "precipitation_probability_max": precipitationProbabilityMax == null
            ? []
            : List<dynamic>.from(precipitationProbabilityMax!.map((x) => x)),
      };
}
