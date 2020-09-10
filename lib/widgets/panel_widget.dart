import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _accountTitleStyle = TextStyle(
      fontSize: 12.0,
      color: Colors.black45,
    );

    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      margin: EdgeInsets.only(bottom: 8.0),
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
                Text(11111.toStringAsFixed(2), style: _accountTitleStyle),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              rowItem(),
              rowItem(),
              rowItem(showBorder: false),
            ],
          )
        ],
      ),
    );
  }

  Container rowItem({bool showBorder = true}) {
    print(showBorder);
    return Container(
      height: 56.0,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: (showBorder == true) ? 0.33 : 0,
            color: (showBorder == true) ? Colors.black12 : Colors.transparent,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.account_balance_wallet,
                size: 20.0,
              ),
              SizedBox(
                width: 6.0,
              ),
              Text('微信钱包'),
            ],
          ),
          Text(
            500.toStringAsFixed(2),
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
