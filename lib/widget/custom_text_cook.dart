import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/font_weight.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:flutter/material.dart';

class customCookText extends StatelessWidget {
  String text="COOK";
  String fontFamilyName="Nunito";
   customCookText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamilyName,
        fontSize: sizeClass.sizeInstance.nunitoTextSize,
        fontWeight: fontWeightClass.weightInstance.bigWeight,
        color: colorClass.colorInstance.textButtonColor,
                  
        
      ),
      
      );
  }
}