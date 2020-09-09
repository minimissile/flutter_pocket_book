import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 登录页面
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _accountController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode _passwordNode = FocusNode();
  FocusNode _accountNode = FocusNode();

  // 是否显示密码
  bool showPwd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('登录'),
      ),
      body: GestureDetector(
        // 点击区域： 容器内所有区域
//        behavior: HitTestBehavior.translucent,
        // 点击收起键盘
        onTap: () {
//          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ListView(
          children: <Widget>[
            // 账号输入框
            TextField(
              focusNode: _accountNode,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
              onEditingComplete: () {
                // 激活密码输入框
                _passwordNode.requestFocus();
              },
//              onTap: () {
//                _accountNode.requestFocus();
//              },
              controller: _accountController,
              decoration: InputDecoration(
                hintText: '请输入手机号',
                labelText: '账号',
                prefixIcon: Icon(
                  Icons.account_circle,
                  size: 20.0,
                ),
                suffixIcon: IconButton(
                  // 清除账号输入
                  onPressed: () {
                    _accountController.clear();
                  },
                  icon: Icon(
                    Icons.clear,
                  ),
                  iconSize: 20.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
            ),
            // 密码输入框
            TextField(
              focusNode: _passwordNode,
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              onEditingComplete: () {
                print('点击了完成');
              },
//              onTap: () {
//                _passwordNode.requestFocus();
//              },
              // 输入是否可见
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: '请输入密码',
                labelText: '密码',
                prefixIcon: Icon(
                  Icons.https,
                  size: 20.0,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _passwordController.clear();
                  },
                  icon: Icon(
                    Icons.clear,
                    size: 20,
                  ),
                ),
              ),
            ),
            // 登录按钮
            Container(
              margin: EdgeInsets.only(top: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              width: MediaQuery.of(context).size.width,
              height: 44.0,
              child: FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  print(_accountController.text);
                  print(_passwordController.text);
                  Navigator.of(context).pushNamed('test');
                },
                child: Text(
                  '登录',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Text('没有账号？去注册'),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('忘记密码');
                    },
                    child: Text('忘记密码'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
