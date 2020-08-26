import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/pages/annal_page.dart';
import 'package:flutter_pocket_book/pages/home_page.dart';
import 'package:flutter_pocket_book/pages/mine_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          print(index);
          currentIndex = index;
        },
        // 滑动超出边界时的动画效果
        // 类ios效果： BouncingScrollPhysics
        // 类安卓效果： AlwaysScrollableScrollPhysics
        // 无效果： NeverScrollableScrollPhysics
        physics:  AlwaysScrollableScrollPhysics(),
        controller: _controller,
        children: <Widget>[
          HomePage(),
          AnnalPage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        backgroundColor: Color(0xFFfafafa),
        items: <Widget>[
          Icon(Icons.list, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        onTap: (index) {
          print(index);
          //Handle button tap
        },
      ),
    );
  }
}
