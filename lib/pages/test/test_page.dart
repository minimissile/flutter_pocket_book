import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/db/provider/user/user_list_db_provider.dart';
import 'package:flutter_pocket_book/pages/bill/bill_page.dart';
import 'package:flutter_pocket_book/pages/home/home_page.dart';
import 'package:flutter_pocket_book/pages/mine/mine_page.dart';
import 'package:flutter_pocket_book/pages/report/report_page.dart';
import 'package:flutter_pocket_book/pages/test/dbhelper.dart';

//class TestPage extends StatefulWidget {
//  @override
//  _TestPageState createState() => _TestPageState();
//}
//
//class _TestPageState extends State<TestPage> {
//  final dbhelper = DatabaseHelper.instance;
//
//  UserListDbProvider provider = UserListDbProvider();
//
//  void insertdata() async {
//    final id = await provider.insert('fullNameM', 'accountM','passwordM');
//    print(id);
//  }
//
//  void queryAll() async {
//    var allRows = await provider.queryAll();
//    allRows.forEach((row) {
//      print(row);
//    });
//  }
//
//  void querySpecific() async {
////    Map<String, dynamic> row = {
////      DatabaseHelper.columnAge: 18,
////    };
//    var allrows = provider.querySpecific('account1');
//    print(allrows);
//  }
//
//  void delete() async {
//    var res = await provider.delete(19);
//    print(res);
//  }
//
//  void update() async {
//
//    Map<String, dynamic> row = {
//      DatabaseHelper.columnName: '1231231',
//      DatabaseHelper.columnAge: 180,
//    };
//
//    var res = await provider.update(20, {'account': '111111111111111'});
//    print(res);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('123123'),
//      ),
//      body: Container(
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              RaisedButton(
//                onPressed: () {
//                  print('插入');
//                  insertdata();
//                },
//                child: Text('insert 插入数据'),
//              ),
//              RaisedButton(
//                onPressed: () {
//                  print('查询数据');
//                  queryAll();
//                },
//                child: Text('query 查询数据'),
//              ),
//              RaisedButton(
//                onPressed: () {
//                  print('条件查询');
//                  querySpecific();
//                },
//                child: Text('query specific 条件查询'),
//              ),
//              RaisedButton(
//                onPressed: () {
//                  print('更新数据');
//                  update();
//                },
//                child: Text('update 更新数据'),
//              ),
//              RaisedButton(
//                onPressed: () {
//                  print('删除数据');
//                  delete();
//                },
//                child: Text('delete 删除数据'),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

//import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
//
//class TestPage extends StatefulWidget {
//  @override
//  _TestPageState createState() => _TestPageState();
//}
//
//class _TestPageState extends State<TestPage> {
//  PersistentTabController _controller;
//  final _defaultColor = Colors.grey;
//  final _activeColor = Colors.blue;
//  int _currentIndex = 0;
//
//  @override
//  void initState() {
//    _controller = PersistentTabController(initialIndex: _currentIndex);
//    super.initState();
//  }
//
//  List<Widget> _buildScreens() {
//    return [
//      HomePage(),
//      BillPage(),
//      null,
//      ReportPage(),
//      MinePage(),
//    ];
//  }
//
//  List<PersistentBottomNavBarItem> _navBarsItems() {
//    return [
//      PersistentBottomNavBarItem(
//        icon: Icon(Icons.home),
//        title: "账单",
//        activeColor: _activeColor,
//        inactiveColor: _defaultColor,
//      ),
//      PersistentBottomNavBarItem(
//        icon: Icon(Icons.search),
//        title: ("账户"),
//        activeColor: _activeColor,
//        inactiveColor: _defaultColor,
//      ),
//      PersistentBottomNavBarItem(
//        icon: Icon(
//          Icons.add,
//          color: Colors.white,
//        ),
//        title: ("记账"),
//        activeColor: _activeColor,
//        inactiveColor: _defaultColor,
//      ),
//      PersistentBottomNavBarItem(
//        icon: Icon(Icons.message),
//        title: ("图表"),
//        activeColor: _activeColor,
//        inactiveColor: _defaultColor,
//      ),
//      PersistentBottomNavBarItem(
//        icon: Icon(Icons.settings),
//        title: ("我的"),
//        activeColor: _activeColor,
//        inactiveColor: _defaultColor,
//      ),
//    ];
//  }
//
//  void _test() {
//    print(123);
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return PersistentTabView(
//      onItemSelected: (index) {
//        print(index);
//        if(index == 2) {
//          Navigator.pushNamed(context, '/keepAccount');
//          _controller.dispose();
//          return;
//        }
//      },
////      onWillPop: _test(),
//      controller: _controller,
//      screens: _buildScreens(),
//      items: _navBarsItems(),
//      confineInSafeArea: false,
//      backgroundColor: Colors.white,
//      handleAndroidBackButtonPress: true,
//      resizeToAvoidBottomInset: true,
//      stateManagement: false,
//      hideNavigationBarWhenKeyboardShows: true,
//      hideNavigationBar: false,
//      decoration: NavBarDecoration(
//        colorBehindNavBar: Colors.indigo,
//        borderRadius: BorderRadius.circular(0.0),
//      ),
//      popAllScreensOnTapOfSelectedTab: false,
//      itemAnimationProperties: ItemAnimationProperties(
//        duration: Duration(milliseconds: 400),
//        curve: Curves.ease,
//      ),
//      screenTransitionAnimation: ScreenTransitionAnimation(
//        animateTabTransition: true,
//        curve: Curves.ease,
//        duration: Duration(milliseconds: 200),
//      ),
//      navBarStyle: NavBarStyle.style15,
//    );
//  }
//}

import 'package:flutter/services.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';
import 'package:flutter_pocket_book/utils/toast_util.dart';

//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      theme: ThemeData(primarySwatch: Colors.deepOrange),
//      home: TestPage(),
//    );
//  }
//}

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int lastTime = 0;
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.pageIndex);
  }

  void onPageChanged(int value) {
    if (value >= 2) {
      value = value + 1;
    }
    setState(() {
      this.pageIndex = value;
    });
  }

  // 跳转记账页
  void keepAccount() {
    Navigator.of(context).pushNamed('/keepAccount');
  }

  // 点击tabBar
  void onTap(int value) {
    if (value == 2) {
      keepAccount();
      return;
    }
    if (value > 2) {
      value = value - 1;
    }
    setState(() {
      pageIndex = value;
    });
    // 控制页面切换，可添加动画切换效果
    pageController.jumpToPage(value);
  }

  _bottomNavigationBarItem(
      {String activeIcon, String icon, int index, String title}) {
    if (icon != null && activeIcon != null) {
      return BottomNavigationBarItem(
        activeIcon: Image.asset(
          Img.getAssetsImg(activeIcon),
          width: 28.0,
        ),
        icon: Image.asset(
          Img.getAssetsImg(icon),
          width: 28.0,
        ),
        title: Text(
          title,
          style: pageIndex == index
              ? TextStyle(color: Color(0xffFF5267))
              : TextStyle(color: Color(0xff8C8F98)),
        ),
      );
    } else {
      return BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.add,
          color: Colors.transparent,
        ),
        icon: Icon(
          Icons.add,
          color: Colors.transparent,
        ),
        title: Text(
          title,
          style: pageIndex == index
              ? TextStyle(color: Color(0xffFF5267))
              : TextStyle(color: Color(0xff8C8F98)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[HomePage(), BillPage(), ReportPage(), MinePage()],
          onPageChanged: onPageChanged,
          controller: pageController,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xffFF5267),
          elevation: 0,
          focusElevation: 0,
          onPressed: () {
            keepAccount();
          },
          child: Icon(
            Icons.add,
            size: 25.0,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
            elevation: 3,
            backgroundColor: Color(0xffffffff),
            selectedFontSize: 12.0,
            unselectedFontSize: 12.0,
            items: [
              _bottomNavigationBarItem(
                activeIcon: 'ic_skin_home_property_pressed.png',
                icon: 'ic_skin_home_property.png',
                index: 0,
                title: '首页',
              ),
              _bottomNavigationBarItem(
                activeIcon: 'ic_skin_home_bill_pressed.png',
                icon: 'ic_skin_home_bill.png',
                index: 1,
                title: '账户',
              ),
              _bottomNavigationBarItem(
                activeIcon: null,
                icon: null,
                index: 2,
                title: '记账',
              ),
              _bottomNavigationBarItem(
                activeIcon: 'ic_skin_home_chart_pressed.png',
                icon: 'ic_skin_home_chart.png',
                index: 3,
                title: '图表',
              ),
              _bottomNavigationBarItem(
                activeIcon: 'ic_skin_home_me_pressed.png',
                icon: 'ic_skin_home_me.png',
                index: 4,
                title: '我的',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            fixedColor: Theme.of(context).primaryColor,
            onTap: onTap,
            currentIndex: pageIndex),
      ),
      onWillPop: () {
        int newTime = DateTime.now().millisecondsSinceEpoch;
        int result = newTime - lastTime;
        lastTime = newTime;
        if (result > 2000) {
          Toast.show('再按一次退出');
        } else {
          SystemNavigator.pop();
        }
        return null;
      },
    );
  }
}
