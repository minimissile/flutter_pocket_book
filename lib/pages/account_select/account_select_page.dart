import 'package:flutter/material.dart';

// 选择账户
class AccountSelectPage extends StatefulWidget {
  @override
  _AccountSelectPageState createState() => _AccountSelectPageState();
}

class _AccountSelectPageState extends State<AccountSelectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择账户类型'),
      ),
      body: ListView(
        children: <Widget>[],
      ),
    );
  }
}
