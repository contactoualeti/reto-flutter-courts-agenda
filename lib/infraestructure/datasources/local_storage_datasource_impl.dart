import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tennis_court_scheduling/domain/entities/courts.dart';

import '../../domain/datasources/local_storage_datasource.dart';

class LocalStorageDatasourceImpl extends LocalStorageDatasource {
  late Future<Isar> db;
  LocalStorageDatasourceImpl() {
    db = openDB();
  }
  Future<Isar> openDB() async {
    final directory = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([CourtsSchema],
          inspector: true, directory: directory.path);
    }
    return Future.value(Isar.getInstance());
  }

  @override
  Future<void> buildStarterCourts() async {
    final isar = await db;
    List<Map<String, dynamic>> courtsListData = [
      {
        'name': "Cancha A",
        "scheduled": 0,
      },
      {
        'name': "Cancha B",
        "scheduled": 0,
      },
      {
        'name': "Cancha C",
        "scheduled": 0,
      },
    ];

    await isar.writeTxn(() async {
      final count = await isar.courts.filter().scheduledEqualTo(0).deleteAll();
    });

    List<Courts> courtsList = [];
    for (var court in courtsListData) {
      final dataCourt = Courts.fromJson(court);
      courtsList.add(dataCourt);
    }

    for (var court in courtsList) {
      isar.writeTxnSync(() => isar.courts.putSync(court));
    }
  }

  @override
  Future<List<Courts>> getAllCourts() async {
    final isar = await db;
    return isar.courts.where().findAll();
  }
}
