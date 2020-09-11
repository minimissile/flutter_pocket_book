import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';
import 'package:timeline_tile/timeline_tile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffF07D59), Color(0xffEB4F70)],
            ),
          ),
        ),
        backgroundColor: Color(0xffFF5267),
        elevation: 0,
        title: Text('首页'),
      ),
      body: ListView(
          children: List.generate(
              20,
              (index) => TimelineTile(
                    indicatorStyle: IndicatorStyle(width: 6.0),
                    bottomLineStyle: LineStyle(width: 0.33),
                    topLineStyle: LineStyle(width: 0.33),
//          lineX: 115.0,
                    alignment: TimelineAlign.center,
                    leftChild: Container(
                      padding: EdgeInsets.only(right: 8.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        '09月 11日',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    rightChild: Container(
//            color: Colors.red,
                      margin: EdgeInsets.only(bottom: 1),
                      padding: EdgeInsets.only(left: 8.0),
                      alignment: Alignment.centerLeft,
                      constraints: BoxConstraints(
                        minHeight: 120,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          recordItem(
                              time: '15.02',
                              type: '买菜',
                              remark: '去晚了肉没了',
                              img: 'empty.png'),
                          recordItem(
                              time: '15.02', type: '晚餐', remark: '楼下饭堂吃的'),
                        ],
                      ),
                    ),
                  ))),
    );
  }

  Container recordItem({String time, String type, String remark, String img}) {
    return Container(
      padding: EdgeInsets.only(bottom: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            time,
            style: TextStyle(fontSize: 12.0, color: Colors.black45),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0),
            child: Row(
              children: <Widget>[
                Text(type),
                SizedBox(
                  width: 5.0,
                ),
                Text(50.toStringAsFixed(2)),
              ],
            ),
          ),
          if (remark != null)
            Text(
              remark,
              style: TextStyle(fontSize: 12.0, color: Colors.black45),
            ),
          if(img != null) Image.asset(Img.getAssetsImg(img),width: 50.0,height: 50.0,fit: BoxFit.cover,)
        ],
      ),
    );
  }
}

//import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:timeline_tile/timeline_tile.dart';
//
//import '../showcase_timeline.dart';
//
//const example8 = Example(
//  name: 'Or provide your own custom indicator.',
//  description:
//  'With the indicator parameter you can customize the tile with your own '
//      'indicator.\nHowever, you must control its size through both width and '
//      'height parameters.',
//  child: Example8(),
//  code: '''
//class Example8 extends StatelessWidget {
//  const Example8({Key key}) : super(key: key);
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Colors.white,
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        children: <Widget>[
//          TimelineTile(
//            alignment: TimelineAlign.right,
//            isFirst: true,
//            indicatorStyle: IndicatorStyle(
//              width: 40,
//              height: 60,
//              padding: const EdgeInsets.all(8),
//              indicator: Image.asset('assets/hitchhiker_2.png'),
//            ),
//            leftChild: const _Child(
//              text: "Don't Panic!",
//              font: 'Bungee',
//            ),
//          ),
//          TimelineTile(
//            alignment: TimelineAlign.right,
//            indicatorStyle: IndicatorStyle(
//              width: 40,
//              height: 40,
//              padding: const EdgeInsets.symmetric(
//                horizontal: 8,
//              ),
//              drawGap: true,
//              indicator: Container(
//                decoration: const BoxDecoration(
//                  border: Border.fromBorderSide(
//                    BorderSide(
//                      color: Colors.grey,
//                    ),
//                  ),
//                  shape: BoxShape.circle,
//                ),
//                child: const Center(
//                  child: Text(
//                    '42',
//                    style: TextStyle(
//                      color: Colors.deepOrange,
//                      fontSize: 30,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//            leftChild: const _Child(
//              text: 'So long, and thanks',
//            ),
//          ),
//          TimelineTile(
//            alignment: TimelineAlign.right,
//            isLast: true,
//            indicatorStyle: IndicatorStyle(
//              width: 40,
//              height: 40,
//              padding: const EdgeInsets.all(8),
//              indicator: Image.asset('assets/hitchhiker.png'),
//            ),
//            leftChild: const _Child(
//              text: 'for all the fish !',
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//class _Child extends StatelessWidget {
//  const _Child({
//    Key key,
//    this.text,
//    this.font = 'Shrikhand',
//  }) : super(key: key);
//  final String text;
//  final String font;
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: const EdgeInsets.all(8),
//      color: Colors.amberAccent,
//      constraints: const BoxConstraints(minHeight: 120),
//      child: Center(
//        child: Text(
//          text,
//          textAlign: TextAlign.center,
//          style: GoogleFonts.getFont(
//            font,
//            color: Colors.deepOrange,
//            fontSize: 26,
//          ),
//        ),
//      ),
//    );
//  }
//};''',
//);
//
//class Example8 extends StatelessWidget {
//  const Example8({Key key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return SliverList(
//      delegate: SliverChildListDelegate(
//        <Widget>[
//          Container(
//            color: Colors.white,
//            child: Column(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                TimelineTile(
//                  alignment: TimelineAlign.right,
//                  isFirst: true,
//                  indicatorStyle: IndicatorStyle(
//                    width: 40,
//                    height: 60,
//                    padding: const EdgeInsets.all(8),
//                    indicator: Image.asset('assets/hitchhiker_2.png'),
//                  ),
//                  leftChild: const _Child(
//                    text: "Don't Panic!",
//                    font: 'Bungee',
//                  ),
//                ),
//                TimelineTile(
//                  alignment: TimelineAlign.right,
//                  indicatorStyle: IndicatorStyle(
//                    width: 40,
//                    height: 40,
//                    padding: const EdgeInsets.symmetric(
//                      horizontal: 8,
//                    ),
//                    drawGap: true,
//                    indicator: Container(
//                      decoration: const BoxDecoration(
//                        border: Border.fromBorderSide(
//                          BorderSide(
//                            color: Colors.grey,
//                          ),
//                        ),
//                        shape: BoxShape.circle,
//                      ),
//                      child: const Center(
//                        child: Text(
//                          '42',
//                          style: TextStyle(
//                            color: Colors.deepOrange,
//                            fontSize: 30,
//                          ),
//                        ),
//                      ),
//                    ),
//                  ),
//                  leftChild: const _Child(
//                    text: 'So long, and thanks',
//                  ),
//                ),
//                TimelineTile(
//                  alignment: TimelineAlign.right,
//                  isLast: true,
//                  indicatorStyle: IndicatorStyle(
//                    width: 40,
//                    height: 40,
//                    padding: const EdgeInsets.all(8),
//                    indicator: Image.asset('assets/hitchhiker.png'),
//                  ),
//                  leftChild: const _Child(
//                    text: 'for all the fish !',
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
//
//class _Child extends StatelessWidget {
//  const _Child({
//    Key key,
//    this.text,
//    this.font = 'Shrikhand',
//  }) : super(key: key);
//
//  final String text;
//  final String font;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: const EdgeInsets.all(8),
//      color: Colors.amberAccent,
//      constraints: const BoxConstraints(minHeight: 120),
//      child: Center(
//        child: Text(
//          text,
//          textAlign: TextAlign.center,
//          style: GoogleFonts.getFont(
//            font,
//            color: Colors.deepOrange,
//            fontSize: 26,
//          ),
//        ),
//      ),
//    );
//  }
//}
