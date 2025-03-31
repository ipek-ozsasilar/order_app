import 'package:cook_order_app/constant/border_side.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:cook_order_app/constant/color.dart'; // Renkleri buradan alabiliriz
import 'package:cook_order_app/constant/border_radius.dart'; // Radiusları buradan alabiliriz

class BorderClass {

   OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderRadius: borderRadiusClass.radiusInstance.textFieldRadius,
      
    );
  }

  // UnderlineInputBorder metodu
   UnderlineInputBorder underlineBorder() {
    return UnderlineInputBorder(
      borderSide: borderSideClass.borderSideClassInstance.borderSideUnderline,
    );
  }
}
