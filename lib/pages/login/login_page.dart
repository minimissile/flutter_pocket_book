import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 显示密码
  bool showPwd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: '账号',
                hintText: '请输入账号',
              ),
            ),
            TextField(
              obscureText: !showPwd,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPwd = !showPwd;
                    });
                  },
                  icon: Icon(showPwd ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(13.0),
            ),
            RaisedButton(
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              onPressed: () {},
              child: Text(
                '登录',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('没有账号?'),
                FlatButton(
                  onPressed: () {
                    print('去注册');
                    Navigator.pushReplacementNamed(context, '/register');
                  },
                  child: Text('去注册',style: TextStyle(
                    color: Colors.blue
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
