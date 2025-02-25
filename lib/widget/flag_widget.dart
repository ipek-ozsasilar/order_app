import 'package:cook_order_app/constant/boxshape.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/url_names_enum.dart';
import 'package:cook_order_app/mixin/image_pull_mixin.dart';
import 'package:flutter/material.dart';

class flagWidget extends StatelessWidget with assetsPull {
  urlNames flagEnum;
  flagWidget({
    Key? key,
    required this.flagEnum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:sizeClass.sizeInstance.flagContainerSizes ,
      width: sizeClass.sizeInstance.flagContainerSizes,
      decoration: BoxDecoration(
        shape: boxShapeClass.circleShape,
      ),
      child: imagePull(flagEnum),
    );
  }
}
