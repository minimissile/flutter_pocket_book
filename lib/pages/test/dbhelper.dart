import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // 数据库名
  static final _databaseName = 'pocket_book.db';

  static final _databaseVersion = 1;

  static final table = 'user_info_table';

  static final columnID = 'id';
  static final columnName = 'name';
  static final columnAge = 'age';

  static Database _database;

  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  Future<Database> get databse async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
//    Directory documentdirecoty = await getApplicationDocumentsDirectory();
//    String path = join(documentdirecoty.path, _databaseName);

    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _databaseName);

    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
        CREATE TABLE $table (
          $columnID INTEGER PRIMARY KEY,
          $columnName TEXT NOT NULL,
          $columnAge INTEGER NOT NULL
        )  
        ''');
  }

  // 插入数据
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.databse;
    return await db.insert(table, row);
  }

  // 查询所有数据
  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.databse;
    return await db.query(table);
  }

  // 条件查询
  // todo: 测试未通过
  Future<List<Map<String, dynamic>>> querySpecific(int age) async {
    Database db = await instance.databse;
    var res = await db.query(table,
        columns: [columnID, columnName, columnAge],
        where: '$columnAge > ?',
        whereArgs: [age]);
//    var res = await db.rawQuery('SELECT * FROM my_table WHERE age >?',[age]);
    return res;
  }

  // 删除数据
  Future<int> deleteData(int id) async {
    Database db = await instance.databse;
    var res = await db.delete(table, where: "id = ?", whereArgs: [id]);
    return res;
  }

  Future<int> update(int id,Map msg) async {
    Database db = await instance.databse;
    var res = await db.update(table, msg, where: "id = ?", whereArgs: [id]);
    return res;
  }


}
