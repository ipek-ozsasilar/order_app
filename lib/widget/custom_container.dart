import 'package:cook_order_app/constant/border_radius.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:flutter/material.dart';

class customContainer extends StatelessWidget {
  final int index;
  final int currentIndex;

  customContainer({required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    double width = currentIndex == index ? sizeClass.sizeInstance.selectionIndicatorSize:(sizeClass.sizeInstance.selectionIndicatorSize/2);
    Color color = currentIndex == index ?  colorClass.colorInstance.textButtonColor:  colorClass.colorInstance.nonSelectionIndicatorColor;

    return Container(
      height: sizeClass.sizeInstance.indicatorHeight,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadiusClass.radiusInstance.textButtonRadius,
      ),
    );
  }
}
