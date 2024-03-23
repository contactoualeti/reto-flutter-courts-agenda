import 'package:isar/isar.dart';

part 'courts.g.dart';

@collection
class Courts {
  Id? isarId;
  int? scheduled;
  String? date;
  String? name;

  Courts({
    this.scheduled,
    this.date,
    this.name,
  });
  Courts.fromJson(Map json) {
    scheduled = json["scheduled"];
    date = json["date"];
    name = json["name"];
  }
}
