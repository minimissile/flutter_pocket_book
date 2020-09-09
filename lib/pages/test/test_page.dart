import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/db/provider/user/user_list_db_provider.dart';
import 'package:flutter_pocket_book/pages/test/dbhelper.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final dbhelper = DatabaseHelper.instance;

  UserListDbProvider provider = UserListDbProvider();

  void insertdata() async {
    final id = await provider.insert('fullNameM', 'accountM','passwordM');
    print(id);
  }

  void queryAll() async {
    var allRows = await provider.queryAll();
    allRows.forEach((row) {
      print(row);
    });
  }

  void querySpecific() async {
//    Map<String, dynamic> row = {
//      DatabaseHelper.columnAge: 18,
//    };
    var allrows = provider.querySpecific('account1');
    print(allrows);
  }

  void delete() async {
    var res = await provider.delete(19);
    print(res);
  }

  void update() async {

    Map<String, dynamic> row = {
      DatabaseHelper.columnName: '1231231',
      DatabaseHelper.columnAge: 180,
    };

    var res = await provider.update(20, {'account': '111111111111111'});
    print(res);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('123'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  print('插入');
                  insertdata();
                },
                child: Text('insert 插入数据'),
              ),
              RaisedButton(
                onPressed: () {
                  print('查询数据');
                  queryAll();
                },
                child: Text('query 查询数据'),
              ),
              RaisedButton(
                onPressed: () {
                  print('条件查询');
                  querySpecific();
                },
                child: Text('query specific 条件查询'),
              ),
              RaisedButton(
                onPressed: () {
                  print('更新数据');
                  update();
                },
                child: Text('update 更新数据'),
              ),
              RaisedButton(
                onPressed: () {
                  print('删除数据');
                  delete();
                },
                child: Text('delete 删除数据'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
