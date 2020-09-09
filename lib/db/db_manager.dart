import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';

class DBManager {
  /// 数据库版本
  static const _VERSION = 1;

  /// 数据库名
  static const _NAME = "pocket_book.db";

  /// 数据库实例
  static Database _database;

  ///初始化
  static init() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _NAME);
    if(Platform.isIOS) {
      path = databasesPath + '/' + _NAME;
    }
    _database = await openDatabase(path,
        version: _VERSION, onCreate: (Database db, int version) async {});
  }

  ///判断表是否存在
  static isTableExits(String tableName) async {
    await getCurrentDatabase();
    var res = await _database.rawQuery(
        "select * from Sqlite_master where type = 'table' and name = '$tableName'");
    return res != null && res.length > 0;
  }

  ///获取当前数据库对象
  static Future<Database> getCurrentDatabase() async {
    if (_database == null) {
      await init();
    }
    return _database;
  }

  ///关闭
  static close() {
    _database?.close();
    _database = null;
  }
}
