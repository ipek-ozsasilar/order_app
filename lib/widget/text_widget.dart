// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/widget/page_view.dart';
import 'package:flutter/material.dart';

class thinText extends StatelessWidget {
TextAlign textCenterAlign=TextAlign.center;
Color? color;
String text;
  thinText({
    Key? key,
    required this.color,

    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
   text,
    textAlign: textCenterAlign,
    style: TextStyle(
      color: color,
                
    ),
    );
  }
}

class weightText extends StatelessWidget {
  String text;
  double fontSize=30;
  FontWeight textWeight=FontWeight.w500;
  weightText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: textWeight,
        fontSize: fontSize,
      ),
      );
  }
}


