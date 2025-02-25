import 'package:flutter/material.dart';

class paddingClass{
  EdgeInsets onlyPadding=EdgeInsets.only(top: 50,bottom: 20);
  EdgeInsets symetricHorizontal=EdgeInsets.symmetric(horizontal: 35);
  EdgeInsets verticalIndicatorPadding=EdgeInsets.symmetric(vertical: 50);
  EdgeInsets indicatorHorizantolSpace=EdgeInsets.symmetric(horizontal: 10);
  EdgeInsets textFieldLeftPadding=EdgeInsets.only(left: 20);
  EdgeInsets emailTextFieldPadding=EdgeInsets.only(top: 24, bottom: 10);
  EdgeInsets sigInButtonPadding=EdgeInsets.symmetric(vertical: 15);
  EdgeInsets dividerPadding=EdgeInsets.symmetric(vertical:20.0);
  EdgeInsets phoneNumberFieldPadding=EdgeInsets.only(top: 10, left: 10);
  EdgeInsets zeroPadding=EdgeInsets.zero;
  EdgeInsets onlyTopPadding=EdgeInsets.only(top: 25);
  EdgeInsets verticalPadding=const EdgeInsets.symmetric(vertical: 10);
  EdgeInsets googleButtonTopPadding=EdgeInsets.only(top: 15);


  paddingClass._();

  static paddingClass paddingInstance=paddingClass._();


}