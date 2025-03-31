import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/enum/text_style_font.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:flutter/material.dart';

class dividerWidget extends StatelessWidget {
   dividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        dividerFun(),
        Padding(
          padding:paddingClass.paddingInstance.indicatorHorizantolSpace,
          child: textWidget(color: levelColor.levelColorInstance.dividerOrColor, text: "OR",textStyleWeight: TextStyleWeight.thin),
        ),
        dividerFun(),
      ],
    );
  }

  Expanded dividerFun() {
    return Expanded(
        child: Divider(
          color: levelColor.levelColorInstance.hintColor,
        ),
      );
  }
}

