import 'package:cook_order_app/constant/border_radius.dart';
import 'package:cook_order_app/constant/duration.dart';
import 'package:cook_order_app/constant/icon.dart';
import 'package:cook_order_app/core/navigator_abstract.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/text_style_font.dart';
import 'package:cook_order_app/widget/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/widget/text_widget.dart';

class textButton <T> extends StatelessWidget {
  String text;
  ButtonType type;
  Color? textColor;
  T Function() ?OnPressed;
  textButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.type,
    this.OnPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: OnPressed,
      child: SizedBox(
        width: sizeClass.sizeInstance.buttonWidht,
        height: sizeClass.sizeInstance.buttonHeight,
        child: childSelectionFun(),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadiusClass.radiusInstance.textFieldRadius,
        ),
        backgroundColor:_getBackgroundColor(),
      ),
    );
  }




  Color? _getBackgroundColor() {
  switch (type) {
    case ButtonType.orange:
      return colorClass.colorInstance.textButtonColor;
    default:
      return levelColor.levelColorInstance.textFieldBgColor;
  }
}


  Widget childSelectionFun() {

    switch (type) {
      case ButtonType.grayWithIcon:
        return Row(
                children: [
                  IconWidget(iconn:IconClass.iconInstance.searchIcon,color: colorClass.colorInstance.blackColor),
                  Expanded(
                    child: Center(
                      child: textWidget(
                        color: colorClass.colorInstance.blackColor,
                        text: "Connect with Google",
                        textStyleWeight: TextStyleWeight.thin
                      ),
                    ),
                  ),
                ],
              );
      default:
      return  Center(
                child: textWidget(color: textColor, text: text,textStyleWeight: TextStyleWeight.thin,),
              );
    }
    
}
}
