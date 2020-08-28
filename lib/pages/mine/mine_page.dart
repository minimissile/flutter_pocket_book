import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    // 修改状态栏颜色
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print('点击消息按钮');
                  },
                  borderRadius: BorderRadius.circular(100.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      Img.getAssetsImg('ic_mine_message.png'),
                      height: 20.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('点击设置按钮');
                  },
                  borderRadius: BorderRadius.circular(100.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      Img.getAssetsImg('ic_mine_setting.png'),
                      height: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
