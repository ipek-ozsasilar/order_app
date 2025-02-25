import 'package:cook_order_app/constant/boxshape.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/url_names_enum.dart';
import 'package:cook_order_app/mixin/image_pull_mixin.dart';
import 'package:cook_order_app/widget/cookstack_container.dart';
import 'package:cook_order_app/widget/custom_text_cook.dart';
import 'package:flutter/material.dart';

class cookStack extends StatelessWidget with assetsPull{
  const cookStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: sizeClass.sizeInstance.cookStackHeight,
              width: sizeClass.sizeInstance.buttonWidht,
              child: Stack(
                children: [
                  cookStackContainerWidget(color: rgbColor.rgbInstance.cookContainerColor,),
                      
                  Positioned(
                    left: sizeClass.sizeInstance.noodleLeft,
                    top: sizeClass.sizeInstance.noodleTop,
                    child: imagePull(urlNames.noodle)
                    ),
              
                    Positioned(
                      left: sizeClass.sizeInstance.stackBottomLeft,
                      top: sizeClass.sizeInstance.stackBottomLeft,
                      child:customCookText(),
                      
                      
                       )
                ],
                
              ),
            );
  }
}

