import 'dart:ffi';

import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class Db {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'pessoas.db'),
      onCreate:(db, version){
        _createDb(db);
      },
      version: 1
    );
  }

  static void _createDb(sql.Database db){}
}
