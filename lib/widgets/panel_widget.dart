import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _accountTitleStyle = TextStyle(
      fontSize: 14.0,
      color: Colors.black45,
    );

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 30.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '网络账户 （2）',
                  style: _accountTitleStyle,
                ),
                Text(11111.toString(), style: _accountTitleStyle),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              rowItem(),
              rowItem(),
              rowItem(),
            ],
          )
        ],
      ),
    );
  }

  Container rowItem() {
    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.4,
            color: Colors.black12,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.account_balance_wallet),
              Text('微信钱包'),
            ],
          ),
          Text(500.toString())
        ],
      ),
    );
  }
}
