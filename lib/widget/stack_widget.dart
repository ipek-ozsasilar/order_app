import 'package:cook_order_app/enum/url_names_enum.dart';
import 'package:cook_order_app/mixin/image_pull_mixin.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:flutter/material.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/size.dart';

class stackWidget extends StatelessWidget with assetsPull{
  urlNames url;
   stackWidget({
    Key? key,
    required this.url,
  }) : super(key: key);


  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: sizeClass.sizeInstance.stackBottomLeft,
          top: sizeClass.sizeInstance.stackTopPosition,
          child: Container(
            height: sizeClass.sizeInstance.circleContainerHeightWidht,
            width: sizeClass.sizeInstance.circleContainerHeightWidht,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: colorClass.colorInstance.blackColor,
              ),
              color: hexCodeColorClass.hexColorInstance.circleContainerColor,
            ),
          ),
        ),
        Positioned(
        top: sizeClass.sizeInstance.stackTopPosition,
        left: sizeClass.sizeInstance.stackBaseLeft,
            child: imagePull(url)),
      ],
    );
  }
}
