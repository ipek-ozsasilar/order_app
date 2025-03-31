import 'package:cook_order_app/enum/text_style_font.dart';
import 'package:flutter/material.dart';

class textWidget extends StatelessWidget {
  TextStyleWeight textStyleWeight;
  Color? color;
  String text;
  double fontSize = 30;
  FontWeight textWeight = FontWeight.w500;
  TextAlign textCenterAlign = TextAlign.center;
  
  textWidget({
    Key? key,
     this.color,
    required this.text,
    required this.textStyleWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign:textStyleWeight==TextStyleWeight.thin? textCenterAlign:null,
      style: TextStyle(
        color:textStyleWeight==TextStyleWeight.thin? color: null,
        fontSize: textStyleWeight==TextStyleWeight.thin? null:fontSize,
        fontWeight: textStyleWeight==TextStyleWeight.thin? null: textWeight,
      ),
    );
  }
}
