import 'package:cook_order_app/constant/border_radius.dart';
import 'package:cook_order_app/constant/icon.dart';
import 'package:cook_order_app/core/navigator_abstract.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/mixin/image_pull_mixin.dart';
import 'package:cook_order_app/widget/icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/widget/text_widget.dart';

class textButton extends StatelessWidget implements navigatorProcess {
  String text;
  Widget page;
  ButtonType type;
  Color? textColor;
  textButton({
    Key? key,
    required this.text,
    required this.page,
    required this.textColor,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        pushMethod(context, page);
      },
      child: SizedBox(
        width: sizeClass.sizeInstance.buttonWidht,
        height: sizeClass.sizeInstance.buttonHeight,
        child: type == ButtonType.orange || type == ButtonType.grayWithoutIcon
            ? Center(
                child: thinText(color: textColor, text: text),
              )
            : Row(
                children: [
                  IconWidget(iconn:IconClass.iconInstance.searchIcon,color: colorClass.colorInstance.blackColor),
                  Expanded(
                    child: Center(
                      child: thinText(
                        color: colorClass.colorInstance.blackColor,
                        text: "Connect with Google",
                      ),
                    ),
                  ),
                ],
              ),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: borderRadiusClass.radiusInstance.textFieldRadius,
        ),
        backgroundColor: type == ButtonType.orange
            ? colorClass.colorInstance.textButtonColor
            : levelColor.levelColorInstance.textFieldBgColor,
      ),
    );
  }

  @override
  void pushMethod(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return page;
    }));
  }
}
