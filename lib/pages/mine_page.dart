import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///C:/Users/I7-B/Desktop/flutter_pocket_book/lib/pages/login/login_page.dart';
import 'package:flutter_pocket_book/utils/navigator_util.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    /// 控制操作系统图形界面的特定方面，以及
    /// 它如何与应用程序交互
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

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
//              Navigator.push(context, route)
            },
            elevation: 0,
            child: Text('退出登录'),
          )
        ],
      ),
    );
  }
}
