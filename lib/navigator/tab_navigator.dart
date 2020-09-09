import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/pages/bill/bill_page.dart';
import 'package:flutter_pocket_book/pages/home/home_page.dart';
import 'package:flutter_pocket_book/pages/mine/mine_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_pocket_book/pages/report/report_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      floatingActionButton: ,
      body: PageView(
        onPageChanged: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        // 滑动超出边界时的动画效果
        // 类ios效果： BouncingScrollPhysics
        // 类安卓效果： AlwaysScrollableScrollPhysics
        // 无效果： NeverScrollableScrollPhysics
        physics: AlwaysScrollableScrollPhysics(),
        controller: _controller,
        children: <Widget>[
          HomePage(),
          BillPage(),
          ReportPage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: Color(0xFFfafafa),
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.branding_watermark, size: 30),
          Icon(Icons.insert_chart, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        onTap: (index) {
          print(index);
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
          //Handle button tap
        },
      ),
    );
  }
}
