import 'package:ic_projeto/Database/creat_tabela.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  static Database _db;

  // ignore: missing_return
  static Future<Database> get() async {
    if (_db == null) {
      var path = join(await getDatabasesPath(), 'banco_contatos');
      _db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, v) {
          db.execute(createTable);
          db.execute(insert1);
          db.execute(insert2);
          db.execute(insert3);
        },
      );
    }
    return _db;
  }
}
