import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/navigator/tab_navigator.dart';
import 'file:///C:/Users/I7-B/Desktop/flutter_pocket_book/lib/pages/home/home_page.dart';
import 'package:flutter_pocket_book/pages/mine/mine_page.dart';
import 'file:///C:/Users/I7-B/Desktop/flutter_pocket_book/lib/pages/login/login_page.dart';
import 'package:flutter_pocket_book/pages/register/register_page.dart';

class Routes {
  static String navigator = '/';
  static String home = '/home';
  static String login = '/login';
  static String register = '/register';
  static String mine = '/mine';

  // 定义路由处理函数
  static Handler _navigatorHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return TabNavigator();
  });

  static Handler _homeHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return HomePage();
  });

  static Handler _loginHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return LoginPage();
  });

  static Handler _registerHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RegisterPage();
  });

  static Handler _mineHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return MinePage();
  });

  // 3. 编写函数 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(Router router) {
    router.define(navigator, handler: _navigatorHandler);
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(mine, handler: _mineHandler);
  }
}
