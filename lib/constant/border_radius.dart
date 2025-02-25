import 'package:flutter/widgets.dart';

class borderRadiusClass {
   BorderRadius textButtonRadius=BorderRadius.circular(20);
   BorderRadius textFieldRadius=BorderRadius.all(Radius.circular(15));

   borderRadiusClass._();
   static borderRadiusClass radiusInstance=borderRadiusClass._();  
}