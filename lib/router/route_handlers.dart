import 'package:fluro/fluro.dart';

import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/navigator/tab_navigator.dart';
import 'package:flutter_pocket_book/pages/home/home_page.dart';
import 'package:flutter_pocket_book/pages/login_page.dart';
import 'package:flutter_pocket_book/pages/message/message_page.dart';
import 'package:flutter_pocket_book/pages/mine/mine_page.dart';
import 'package:flutter_pocket_book/pages/register/register_page.dart';
import 'package:flutter_pocket_book/pages/set/set_page.dart';

// 定义路由处理函数
 var _navigatorHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return TabNavigator();
});

Handler _homeHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return HomePage();
});

Handler _loginHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return LoginPage();
});

Handler _registerHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return RegisterPage();
});

Handler _mineHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MinePage();
});

Handler _setHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return SetPage();
});

Handler _messageHandler =
Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MessagePage();
});