import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';
import 'package:flutter_pocket_book/utils/toast_util.dart';
import 'package:flutter_pocket_book/widgets/cell_widget.dart';

import 'mine_ad_widget.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    // AnnotatedRegion 修改状态栏颜色
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
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
                      Navigator.pushNamed(context, '/message');
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
//                     Toast.show('msg');
                      Navigator.pushNamed(context, '/set');
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
              child: Container(
                padding: EdgeInsets.only(bottom: 15.0),
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
//                    padding: EdgeInsets.only(bottom: 15.0),
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
                  ],
                ),
              ),
            ),
//            MineAd(),
            Container(
              height: 10.0,
              color: Color.fromARGB(255, 245, 245, 245),
            ),
//            CellWidget(
//              onTap: () {
//                Toast.show('开通VIP');
//              },
//              title: '开通VIP',
//              value: '支持导出账单，专属皮肤',
//              icon: Image.asset(
//                Img.getAssetsImg('icon_vip.png'),
//                fit: BoxFit.cover,
//                width: 18.0,
//              ),
//            ),
//            CellWidget(
//              onTap: () {
//                Toast.show('我的福利');
//              },
//              title: '我的福利',
//              value: '热门活动',
//              icon: Image.asset(
//                Img.getAssetsImg('icon_fuli.png'),
//                fit: BoxFit.cover,
//                width: 18.0,
//              ),
//            ),
//            CellWidget(
//              onTap: () {
//                Toast.show('我的客服');
//              },
//              title: '我的客服',
//              value: '联系客服',
//              icon: Image.asset(
//                Img.getAssetsImg('icon_kefu.png'),
//                fit: BoxFit.cover,
//                width: 18.0,
//              ),
//            ),
            CellWidget(
              onTap: () {
//                Toast.show('我的客服');
                Navigator.pushNamed(context, '/budget');
              },
              title: '预算中心',
              value: '收支管理',
              icon: Image.asset(
                Img.getAssetsImg('icon_yusuan.png'),
                fit: BoxFit.cover,
                width: 18.0,
              ),
            ),
            CellWidget(
              onTap: () {
//                Toast.show('我的客服');
                Navigator.pushNamed(context, '/budget');
              },
              title: '标签管理',
              value: '分类统计',
              icon: Image.asset(
                Img.getAssetsImg('icon_biaoqian.png'),
                fit: BoxFit.cover,
                width: 16.0,
                height: 16.0,
              ),
            ),

            CellWidget(
              onTap: () {
//                Toast.show('我的客服');
                Navigator.pushNamed(context, '/budget');
              },
              title: '家庭成员',
              value: '全家能用',
              icon: Image.asset(
                Img.getAssetsImg('icon_jtcy.png'),
                fit: BoxFit.cover,
                width: 16.0,
                height: 16.0,
              ),
            ),

//            CellWidget(
//              onTap: () {
//                Toast.show('实用工具');
//              },
//              title: '实用工具',
//              value: '房贷计算器',
//              icon: Image.asset(
//                Img.getAssetsImg('icon_gongju.png'),
//                fit: BoxFit.cover,
//                width: 18.0,
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
