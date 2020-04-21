import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../Model/model.dart';

class DbHelper {
  final String tbName = "userdB";

  final String username = "username";
  final String password = "password";

  static final _dbHelper = DbHelper._internal();

  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }
  static Database _db;

  Future<Database> get db async {
    if (_db == null)
      return await initializeDb();
    else
      return _db;
  } // Entry to the db

  Future<Database> initializeDb() async {
    return openDatabase(join(await getDatabasesPath() + "userDb"),
        version: 1, onCreate: _createDb);
  }

  FutureOr<void> _createDb(Database db, int version) async {
    String sql =
        "CREATE TABLE $tbName(id INTEGER PRIMARY KEY, username TEXT NOT NULL, password TEXT NOT NULL) ";
    await db.execute(sql);
  }

  Future<void> insert(User user) async {
    Database d = await db;
    d.insert(tbName, user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<User> getUser() async {
    Database d = await db;
    String sql = "SELECT * FROM $tbName";
    return User.fromMap(await d.rawQuery(sql));
  }
}
