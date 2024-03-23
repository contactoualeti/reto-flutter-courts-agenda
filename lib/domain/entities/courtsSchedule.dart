import 'package:isar/isar.dart';

part 'courtsSchedule.g.dart';

@collection
class CourtsSchedule {
  Id? isarId;
  int? scheduled;
  String? date;
  String? name;
  String? precipitationProbability;
  String? courtName;

  CourtsSchedule({
    this.scheduled,
    this.date,
    this.name,
    this.precipitationProbability,
    this.courtName,
  });
  CourtsSchedule.fromJson(Map json) {
    scheduled = json["scheduled"];
    date = json["date"];
    name = json["name"];
    courtName = json['courtName'];
  }
}
