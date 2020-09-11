import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';

List adInfoMap = [
  {
    "imgUrl": "ic_me_yd_tab_ad.png",
    "title": "主题换肤",
    "desc": "主题随心换",
  },
//  {
//    "imgUrl": "ic_me_yd_tab_ad.png",
//    "title": "广告投放",
//    "desc": "广告",
//  },
//  {
//    "imgUrl": "ic_me_yd_tab_ad.png",
//    "title": "广告投放",
//    "desc": "广告",
//  },
];

class MineAd extends StatefulWidget {
  @override
  _MineAdState createState() => _MineAdState();
}

class _MineAdState extends State<MineAd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.only(top: 28.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: adBuilder(),
      ),
    );
  }
}

// 广告位 创建
List<Widget> adBuilder() {
  List<Widget> result = new List();
  adInfoMap.forEach((item) {
    result.add(Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            Img.getAssetsImg(item["imgUrl"]),
            fit: BoxFit.cover,
            height: 35.0,
            width: 35.0,
          ),
          SizedBox(height: 8.0),
          Text(
            item["title"],
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 3.0),
          Text(
            item["desc"],
            style: TextStyle(
              fontSize: 10.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ));
  });
  return result.toList();
}
