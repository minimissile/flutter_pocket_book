import 'package:flutter_pocket_book/db/db_provider.dart';
import 'package:sqflite/sqflite.dart';

class UserListDbProvider extends BaseDbProvider {
  // 用户列表（家庭多成员记账）
  final String name = 'UserList';
  final String columnId = '_id';
  final String columnFullName = "fullName";
  final String columnAccount = 'account';
  final String columnPassword = 'password';

  int id;
  String fullName;
  String account;
  String password;

  UserListDbProvider();

  Map<String, dynamic> toMap(String fullName, String account, String password) {
    Map<String, dynamic> map = {
      columnFullName: fullName,
      columnAccount: account,
      columnPassword: password
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  UserListDbProvider.fromMap(Map map) {
    id = map[columnId];
    fullName = map[columnFullName];
    account = map[columnAccount];
    password = map[columnPassword];
  }

  @override
  tableSqlString() {
    return tableBaseString(name, columnId) +
        '''
        $columnFullName text not null,
        $columnAccount text not null,
        $columnPassword text not null)
      ''';
  }

  @override
  tableName() {
    return name;
  }

  Future _getProvider(Database db, String fullName) async {
    List<Map<String, dynamic>> maps = await db.query(name,
        columns: [columnId, columnFullName, columnAccount, columnPassword],
        where: "$columnFullName = ?",
        whereArgs: [fullName]);
    if (maps.length > 0) {
      UserListDbProvider provider = UserListDbProvider.fromMap(maps.first);
      return provider;
    }
    return null;
  }

  /// 插入到数据库
  Future insert(String fullName, String account, String password) async {
    Database db = await getDataBase();
    var provider = await _getProvider(db, fullName);
    if (provider != null) {
      await db
          .delete(name, where: "$columnFullName = ?", whereArgs: [fullName]);
    }
    return await db.insert(name, toMap(fullName, account, password));
  }

  // 查询所有数据, 测试通过
  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await getDataBase();
    return await db.query(name);
  }

  // 删除数据, 测试通过
  Future<int> delete(int id) async {
    Database db = await getDataBase();
    var res = await db.delete(name, where: "_id = ?", whereArgs: [id]);
    return res;
  }

  // 条件查询
  Future querySpecific(String account) async {
    Database db = await getDataBase();
//    var res = await db.query(name,
//        columns: [columnID, columnName, columnAge],
//        where: '$columnAge > ?',
//        whereArgs: [age]);
//    var res = await db.rawQuery('SELECT * FROM $name WHERE account =?',[account]);

//    List<Map<String, dynamic>> maps = await db.query(name,
//        columns: [columnId, columnFullName, columnAccount, columnPassword],
//        where: "$columnAccount = ?",
//        whereArgs: [account]);

    print(account);


//    List<Map<String, dynamic>> maps = await db.rawQuery('SELECT * FROM $name WHERE account =?',[account]);
    List maps = await db.rawQuery('SELECT * FROM $name WHERE account =?',[account]);


    return maps;
  }

  Future<int> update(int id,Map msg) async {
    Database db = await getDataBase();
    var res = await db.update(name, msg, where: "id = ?", whereArgs: [id]);
    return res;
  }
}
