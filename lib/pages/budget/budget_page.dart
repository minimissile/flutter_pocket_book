import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pocket_book/utils/img_util.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

/// 预算中心
class BudgetPage extends StatefulWidget {
  @override
  _BudgetPageState createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
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
        title: Text('预算中心'),
      ),
      body: Column(
        children: <Widget>[
          // 头部环形进度条
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: CircularPercentIndicator(
                  // 进度条形状
                  circularStrokeCap: CircularStrokeCap.round,
                  // 进度条加载动画
                  animation: true,
                  // 动画时长，单位毫秒
                  animationDuration: 1000,
                  // 进度条宽度
                  radius: 100.0,
                  // 边框宽度
                  lineWidth: 8.0,
                  // 进度条颜色
                  progressColor: Color(0xffFF5267),
                  // 背景色
                  backgroundColor: Color(0xffF3F0F1),
                  // 环比进度
                  percent: 0.5,
                  header: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "本月总预算",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  footer: null,
                  center: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '剩余',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text('50%',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18.0,
                            )),
                      ],
                    ),
                  ),
//                  backgroundColor: Colors.grey,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: <Widget>[
                      rowItem(title: '总预算', sum: 3000),
                      rowItem(title: '已支出', sum: 1500),
                      rowItem(title: '剩余预算', sum: 1500),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 8.0,
            color: Color(0xffF6F6F6),
          ),
          // 缺省页
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 178.0,
                      child: Image.asset(
                        Img.getAssetsImg('empty.png'),
                      ),
                    ),
                    Text(
                      '未设置分类预算',
                      style: TextStyle(fontSize: 16.0, color: Colors.black38),
                    )
                  ],
                ),
              ),
            ),
          ),

          Container(
            height: 50.0,
            width: double.infinity,
            child: RaisedButton(
              color: Color(0xffFF5267),
              onPressed: () {},
              child: Text(
                '添加分类预算',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container rowItem({String title, double sum}) {
    return Container(
      height: 22.0,
      padding: EdgeInsets.only(
        right: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontSize: 14.0,color: Colors.black54),
          ),
          Text(
            sum.toStringAsFixed(2),
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
