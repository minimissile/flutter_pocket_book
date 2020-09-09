import 'package:flutter/material.dart';

/// 记账
class KeepAccountPage extends StatefulWidget {
  @override
  _KeepAccountPageState createState() => _KeepAccountPageState();
}

class _KeepAccountPageState extends State<KeepAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('记账'),
      ),
      body: Container(
        child: Text('记账页面'),
      ),
    );
  }
}
