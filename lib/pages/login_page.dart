import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);


    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 22.0,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '密码登录',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF66728F),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
