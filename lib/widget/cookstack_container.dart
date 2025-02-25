import 'package:cook_order_app/constant/boxshape.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:flutter/material.dart';

class cookStackContainerWidget extends StatelessWidget {
  Color? color;
   cookStackContainerWidget({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: sizeClass.sizeInstance.stackBottomLeft,
      child: Container(
        height: sizeClass.sizeInstance.cookContainerHeight,
        width: sizeClass.sizeInstance.cookContainerWidht,
        decoration: BoxDecoration(
          color:color,
          shape: boxShapeClass.circleShape,
        ),
      ),
    );
  }
}
