import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/pages/login_page.dart';
import 'package:flutter_pocket_book/utils/navigator_util.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Column(
        children: <Widget>[
          Text('123131'),
          RaisedButton(
            onPressed: () {
              print('退出登录');
              NavigatorUtil.push(context, LoginPage());
            },
            elevation: 0,
            child: Text('退出登录'),
          )
        ],
      ),
    );
  }
}
