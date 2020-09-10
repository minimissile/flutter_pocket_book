import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pocket_book/pages/bill/bill_page.dart';
import 'package:flutter_pocket_book/pages/home/home_page.dart';
import 'package:flutter_pocket_book/pages/mine/mine_page.dart';
import 'package:flutter_pocket_book/pages/report/report_page.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';
import 'package:flutter_pocket_book/utils/toast_util.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
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
