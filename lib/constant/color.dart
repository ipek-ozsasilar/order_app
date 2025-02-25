import 'dart:ui';
import 'package:flutter/material.dart';

class colorClass{
  Color blueGreyColor=Colors.blueGrey;
  Color textButtonColor=Colors.orange;
  Color blackColor=Colors.black;
  Color nonSelectionIndicatorColor=Colors.grey;
  Color whiteColor=Colors.white;

  colorClass._();
  static colorClass colorInstance=colorClass._();
}

class hexCodeColorClass {
  Color circleContainerColor=Color(0xFFFFEBE5);  
    hexCodeColorClass._();
    static hexCodeColorClass hexColorInstance=hexCodeColorClass._();
}

class rgbColor {
  Color cookContainerColor=Color.fromARGB(255, 248, 213, 160);
  rgbColor._();
  static rgbColor rgbInstance=rgbColor._();
  
}


class levelColor {
  Color? hintColor=Colors.grey[400];
  Color? textFieldBgColor=Colors.grey[200];
  Color? dividerOrColor=Colors.grey[600];
  levelColor._();
  static levelColor levelColorInstance=levelColor._();
  
}