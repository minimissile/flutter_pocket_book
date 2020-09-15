import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/navigator/tab_navigator.dart';
import 'package:flutter_pocket_book/pages/account_select/account_select_page.dart';
import 'package:flutter_pocket_book/pages/balance_and_payments/pages.balance_and_payments_page.dart';
import 'package:flutter_pocket_book/pages/budget/budget_page.dart';
import 'package:flutter_pocket_book/pages/encourage/encourage_page.dart';
import 'package:flutter_pocket_book/pages/home/home_page.dart';
import 'package:flutter_pocket_book/pages/keep_account/keep_account_page.dart';
import 'package:flutter_pocket_book/pages/login/login_page.dart';
import 'package:flutter_pocket_book/pages/message/message_page.dart';
import 'package:flutter_pocket_book/pages/mine/mine_page.dart';
import 'package:flutter_pocket_book/pages/register/register_page.dart';
import 'package:flutter_pocket_book/pages/set/set_page.dart';
import 'package:flutter_pocket_book/pages/test/test_page.dart';

class Routes {
  static String navigator = '/';
  static String home = '/home';

  // 登录
  static String login = '/login';

  // 注册
  static String register = '/register';

  // 我的
  static String mine = '/mine';

  // 设置
  static String set = '/set';

  // 消息中心
  static String message = '/message';

  // 测试
  static String test = '/test';

  // 选择账户
  static String accountSelect = '/accountSelect';

  // 收支报表
  static String balanceAndPayment = '/balanceAndPayment';

  // 记账
  static String keepAccount = '/keepAccount';

  // 预算中心
  static String budget = '/budget';
  // 爱的鼓励
  static String encourage = '/encourage';

  // 定义路由处理函数

  static Handler _budgetHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return BudgetPage();
  });

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

  static Handler _testHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return TestPage();
  });

  static Handler _accountSelectHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return AccountSelectPage();
  });

  static Handler _balanceAndPaymentPageHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return BalanceAndPaymentPage();
  });

  static Handler _keepAccountHandler =
      Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return KeepAccountPage();
  });

  static Handler _encouragePageHandler =
  Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return EncouragePage();
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
    router.define(test, handler: _testHandler);
    router.define(accountSelect, handler: _accountSelectHandler);
    router.define(keepAccount, handler: _keepAccountHandler);
    router.define(budget, handler: _budgetHandler);
    router.define(encourage, handler: _encouragePageHandler);
  }
}
