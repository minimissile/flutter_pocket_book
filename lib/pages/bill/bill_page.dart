import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';

class BillPage extends StatefulWidget {
  @override
  _BillPageState createState() => _BillPageState();
}

class _BillPageState extends State<BillPage> {
  TextStyle _bannerText = TextStyle(fontSize: 14.0, color: Colors.white);

  // 总资产
  num totalAssets = 266.55123;

  // 总负债
  num totalLiabilities = 8.00123;

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: MediaQuery.removePadding(
          // 移除上边距
          removeTop: true,
          context: context,
          child: ListView(
            children: <Widget>[
              Banner(
                  totalAssets: totalAssets,
                  totalLiabilities: totalLiabilities,
                  bannerText: _bannerText),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: <Widget>[
                    ExpansionPanelList(
                      children: <ExpansionPanel>[
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return ListTile(
                              title: Text('我是标题'),
                            );
                          },
                          body: Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
                            child: ListBody(
                              children: <Widget>[
                                Card(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text('我是内容'),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text('我是内容'),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text('我是内容'),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text('我是内容'),
                                  ),
                                ),
                                Card(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text('我是内容'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          isExpanded: _isExpanded,
                          canTapOnHeader: true,
                        ),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          _isExpanded = !isExpanded;
                        });
                      },
                      animationDuration: kThemeAnimationDuration,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// banner
class Banner extends StatelessWidget {
  const Banner({
    Key key,
    @required this.totalAssets,
    @required this.totalLiabilities,
    @required TextStyle bannerText,
  })  : _bannerText = bannerText,
        super(key: key);

  final num totalAssets;
  final num totalLiabilities;
  final TextStyle _bannerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color(0xffF07D59), Color(0xffEB4F70)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '净资产',
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: RichText(
              text: TextSpan(
                text:
                    ((totalAssets - totalLiabilities).toInt() ?? 0).toString(),
                style: TextStyle(
                  fontSize: 36.0,
                ),
                children: [
                  TextSpan(text: '.', style: TextStyle(fontSize: 20.0)),
                  TextSpan(
                    text: (int.tryParse((totalAssets - totalLiabilities)
                            .toStringAsFixed(2)
                            .split('.')[1]))
                        .toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                '总资产',
                style: _bannerText,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  (totalAssets.toInt()).toStringAsFixed(2),
                  style: _bannerText,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: 1.0,
                height: 10.0,
                color: Colors.white,
              ),
              Text(
                '总负债',
                style: _bannerText,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  (totalLiabilities.toInt()).toStringAsFixed(2),
                  style: _bannerText,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
