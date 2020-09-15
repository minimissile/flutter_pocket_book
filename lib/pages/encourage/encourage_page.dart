import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';
import 'package:flutter_pocket_book/widgets/cell_widget.dart';
import 'package:share/share.dart';

/// 爱的鼓励
class EncouragePage extends StatefulWidget {
  @override
  _EncouragePageState createState() => _EncouragePageState();
}

class _EncouragePageState extends State<EncouragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFF5267),
        title: Text('爱的鼓励'),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              height: 165.0,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 120.0,
                      child: Image.asset(
                        Img.getAssetsImg('logo.png'),
                      ),
                    ),
                    Text(
                      '有钱记账',
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 10.0,
              color: Color.fromARGB(255, 245, 245, 245),
            ),
            CellWidget(
              title: '分享给好友',
              value: '',
              onTap: () {
                Share.share('https://pub.flutter-io.cn/packages/share/install');
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 36.0),
              width: MediaQuery.of(context).size.width * 0.7,
              child: Image.asset(Img.getAssetsImg('zfbskm.jpg')),
            ),
            Center(
              child: Text('您的鼓励，我的动力',style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
