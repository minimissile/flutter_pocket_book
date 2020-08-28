import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';

import 'mine_ad_widget.dart';

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
          // 顶部按钮
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
          ),
          // 用户信息
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Image.asset(
                    Img.getAssetsImg("ic_vip_default_avatar.png"),
                    height: 65.0,
                    width: 65.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  height: 58.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "立即登陆",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "登陆后，将会拥有更好的使用体验",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
//
              ],
            ),
          ),
          MineAd(),
          Container(
            height: 10.0,
            color: Color.fromARGB(255, 245, 245, 245),
          ),
        ],
      ),
    );
  }
}
