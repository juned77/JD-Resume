import 'package:flutter/material.dart';

class HolderContainer extends StatelessWidget {
  final Widget widget;
  final Color color;

  HolderContainer({this.widget, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.only(left: 32, right: 32),
      padding: EdgeInsets.all(32),
      child: widget,
    );
  }
}
