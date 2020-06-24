import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  String text;
  bool isHeader;
  CustomHeaderText({this.text,this.isHeader});
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(text,
      style: TextStyle(
        fontSize: (isHeader==true)?17:15,
        fontWeight: (isHeader==true)?FontWeight.w800:FontWeight.w500,
        color: Colors.grey
      ),
      ),
    );
  }
}