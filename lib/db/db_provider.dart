import 'package:sqflite/sqflite.dart';
import 'package:meta/meta.dart';
import 'package:flutter_pocket_book/db/db_manager.dart';

/// 数据库操作基类
abstract class BaseDbProvider {
  bool isTableExits = false;

  tableSqlString();

  tableName();

  ///创建表sql语句
  tableBaseString(String name, String columnId) {
    return '''
        create table $name (
        $columnId integer primary key autoincrement,
      ''';
  }

  Future<Database> getDataBase() async {
    return await open();
  }

  ///super 函数对父类进行初始化
  @mustCallSuper
  prepare(name, String createSql) async {
    isTableExits = await DBManager.isTableExits(name);
    if (!isTableExits) {
      Database db = await DBManager.getCurrentDatabase();
      return await db.execute(createSql);
    }
  }

  @mustCallSuper
  open() async {
    if (!isTableExits) {
      await prepare(tableName(), tableSqlString());
    }
    return await DBManager.getCurrentDatabase();
  }
}
