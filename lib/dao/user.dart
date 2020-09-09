//import 'package:flutter_pocket_book/db/db_provider.dart';
//import 'package:sqflite/sqflite.dart';
//
//class User {
//  final String id;
//  final String account;
//  final String password;
//
//  User(User msg, {this.id, this.account, this.password});
//
//  factory User.fromJson(Map<String, dynamic> json) {
//    return User(
//      id: json['id'],
//      account: json['account'],
//      password: json['password'],
//    );
//  }
//}
//
//class UserDao extends BaseDbProvider {
//  // 表名
//  final String name = 'User';
//
//  final String columnId = '_id';
//
//  @override
//  tableName() {
//    return name;
//  }
//
//  @override
//  tableSqlString() {
//    return tableBaseString(name, columnId) +
//        '''
//      id text not null,
//      account text,
//      password text)
//    ''';
//  }
//
//  Future insert(User msg) async {
//    Database db = await getDataBase();
//    return await db.insert(name, User(msg));
//  }
//}
