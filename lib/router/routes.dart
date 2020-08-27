import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/pages/home_page.dart';
import 'file:///C:/Users/I7-B/Desktop/flutter_pocket_book/lib/pages/login/login_page.dart';
import 'package:flutter_pocket_book/pages/register/register_page.dart';

class Routes {
  static String home = '/';
  static String login = '/login';
  static String register = '/register';

  // 定义路由处理函数
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

  // 3. 编写函数 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(Router router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
  }
}
