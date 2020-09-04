import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/navigator/tab_navigator.dart';
import 'package:flutter_pocket_book/pages/home/home_page.dart';
import 'package:flutter_pocket_book/pages/login/login_page.dart';
import 'package:flutter_pocket_book/pages/message/message_page.dart';
import 'package:flutter_pocket_book/pages/mine/mine_page.dart';
import 'package:flutter_pocket_book/pages/register/register_page.dart';
import 'package:flutter_pocket_book/pages/set/set_page.dart';

class Routes {
  static String navigator = '/';
  static String home = '/home';
  static String login = '/login';
  static String register = '/register';
  static String mine = '/mine';
  static String set = '/set';
  static String message = '/message';

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

  static Handler _setHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return SetPage();
  });

  static Handler _messageHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return MessagePage();
  });

  // 3. 编写函数 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(Router router) {
    router.define(navigator, handler: _navigatorHandler);
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(mine, handler: _mineHandler);
    router.define(set, handler: _setHandler);
    router.define(message, handler: _messageHandler);
  }
}
