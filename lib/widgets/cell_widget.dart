import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// cell
class CellWidget extends StatelessWidget {
  final Function onTap;

  ///左边文字
  final String title;

  ///右边文字
  final String value;

  ///是否显示右边箭头
  final bool showLink;

  ///左边icon
  final Widget icon;

  ///iconName
  final String iconName;

  const CellWidget(
      {Key key,
      this.onTap,
      this.title,
      this.value,
      this.showLink = true,
      this.icon,
      this.iconName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {
          if (onTap != null) {
            onTap();
          }
        },
        child: Container(
          height: 50.0,
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
                  if (icon != null)
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: icon,
                    ),
                  Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    value,
                    style: TextStyle(color: Colors.black54, fontSize: 14.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.0),
                  ),
                  if (showLink)
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black54,
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
