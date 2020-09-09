import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: ListView(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/mine');
            },
            child: Text('去我的页面'),
          ),

          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/keepAccount');
            },
            child: Text('记一笔'),
          )
        ],
      ),
    );
  }
}
