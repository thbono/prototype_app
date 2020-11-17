import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:prototype_app/model/associated.dart';
import 'package:sqflite/sqflite.dart';

class StorageData {
  static final StorageData _instance = StorageData._();
  static Database _database;

  StorageData._();

  factory StorageData() {
    return _instance;
  }

  Future<Database> get db async {
    if (_database != null) {
      return _database;
    }

    _database = await init();

    return _database;
  }

  Future<Database> init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String dbPath = join(directory.path, 'database.db');
    var database = openDatabase(dbPath, version: 1, onCreate: _onCreate, onUpgrade: _onUpgrade);

    return database;
  }

  void _onCreate(Database db, int version) {
    db.execute('''
      CREATE TABLE associated(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        cpf TEXT,
        birthdate TEXT,
        amount TEXT,
        document_image BLOB,
        status TEXT)
    ''');
    print("Database was created!");
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) {}

  Future<int> insert(Associated associated) async {
    var client = await db;
    return client.insert('associated', associated.toMapForDb(), conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<Associated> fetchId(int id) async {
    var client = await db;
    final Future<List<Map<String, dynamic>>> futureMaps = client.query('associated', where: 'id = ?', whereArgs: [id]);
    var maps = await futureMaps;

    if (maps.length != 0) {
      return Associated.fromDb(maps.first);
    }

    return null;
  }

  Future<List<Associated>> fetchAll() async {
    var client = await db;
    var res = await client.query('associated');

    if (res.isNotEmpty) {
      var associates = res.map((map) => Associated.fromDb(map)).toList();
      return associates;
    }
    return [];
  }

  Future<int> update(Associated associated) async {
    var client = await db;
    return client.update('associated', associated.toMapForDb(),
        where: 'id = ?', whereArgs: [associated.id], conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> remove(int id) async {
    var client = await db;
    return client.delete('associated', where: 'id = ?', whereArgs: [id]);
  }

  Future closeDb() async {
    var client = await db;
    client.close();
  }
}