import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
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
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '确认密码',
                hintText: '请再次输入密码',
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
                '注册',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('已有账号?'),
                FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: Text(
                    '去登录',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
