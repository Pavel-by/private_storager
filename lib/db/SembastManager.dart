import 'package:path/path.dart' as Path;
import 'package:path_provider/path_provider.dart' as Path;
import 'package:sembast/sembast.dart' as Sembast;
import 'package:sembast/sembast_io.dart' as Sembast;

class SembastManager {
  static const dbName = "storage.db";
  Sembast.Database db;

  Future<String> _createPath(String dbName) async {
    var dir = await Path.getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    return Path.join(dir.path, dbName);
  }

  Future<Sembast.Database> _openDatabase() async {
    var path = await _createPath(dbName);
    return Sembast.databaseFactoryIo.openDatabase(path);
  }

  Future init() async {
    db =
  }


  /// ---------------

  static SembastManager _instance;
  SembastManager._();
  factory SembastManager() {
    _instance = _instance ?? SembastManager._();
    return _instance;
  }
}