import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/views/create_account_page.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:flutter/material.dart';

mixin gestureDetectorText<T extends StatefulWidget> on State<T>{
   bool underline = false;
  Widget InkwellText(String text,VoidCallback onTap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          underline = !underline;
        });
        onTap();
      },
      child: Text(
        text,
        style: TextStyle(
          color: colorClass.colorInstance.textButtonColor,
          decoration: underline ? TextDecoration.underline : null,
          decorationColor: colorClass.colorInstance.textButtonColor,
        ),
      ),
    );
  }
}

