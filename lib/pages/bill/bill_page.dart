import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pocket_book/widgets/panel_widget.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

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

  // 是否可见
  bool _isVisible = true;

  // 账户列表
  List<dynamic> list;

  @override
  void initState() {
    super.initState();
  }

  // 定义下拉加载控制器
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  // 下拉刷新
  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 500));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: MediaQuery.removePadding(
          // 移除上边距
          removeTop: true,
          context: context,
          child: Container(
            color: Color(0xffF6F6F6),
            child: Column(
              children: <Widget>[
                Banner(
                  isVisible: _isVisible,
                  totalAssets: totalAssets,
                  totalLiabilities: totalLiabilities,
                  bannerText: _bannerText,
                  onChange: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                ),
                Expanded(
                  child: SmartRefresher(
                    enablePullDown: true,
                    enablePullUp: false,
                    header: WaterDropMaterialHeader(
                      color: Colors.white,
                      backgroundColor: Color(0xffFF5267),
                    ),
                    controller: _refreshController,
                    onRefresh: _onRefresh,
                    child: ListView(
                      children: <Widget>[
                        PanelWidget(),
                        PanelWidget(),
                        PanelWidget(),
                      ],
                    ),
                  ),
                )
              ],
            ),
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
    @required this.isVisible,
    @required this.totalLiabilities,
    @required TextStyle bannerText,
    this.onChange,
  })  : _bannerText = bannerText,
        super(key: key);

  final num totalAssets;
  final bool isVisible;
  final num totalLiabilities;
  final TextStyle _bannerText;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 20.0,
          left: 20.0,
          right: 5.0),
//      padding: EdgeInsets.all(20.0),
      height: 172.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Color(0xffF07D59), Color(0xffEB4F70)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  if (onChange != null) {
                    onChange();
                  }
                },
                icon: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                  size: 20.0,
                  color: Colors.white,
                ),
              ),
              IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  Navigator.pushNamed(context, 'accountSelect');
                },
                icon: Icon(
                  Icons.add,
                  size: 25.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            '净资产',
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: RichText(
              text: TextSpan(
                text: isVisible
                    ? ((totalAssets - totalLiabilities).toInt() ?? 0).toString()
                    : '*****',
                style: TextStyle(
                  fontSize: 36.0,
                ),
                children: [
                  if (isVisible == true)
                    TextSpan(text: '.', style: TextStyle(fontSize: 20.0)),
                  if (isVisible == true)
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
                  isVisible
                      ? (totalAssets.toInt()).toStringAsFixed(2)
                      : '*****',
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
                  isVisible
                      ? (totalLiabilities.toInt()).toStringAsFixed(2)
                      : '*****',
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
