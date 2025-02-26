import 'package:cook_order_app/constant/icon.dart';
import 'package:cook_order_app/enum/url_names_enum.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/icon_widget.dart';
import 'package:flutter/material.dart';

mixin assetsPull {
  Widget imagePull(urlNames url) {
    return Image.asset(
      "assets/${url.name}.png",
      errorBuilder: (context, object, stackTrace) {
        return IconWidget(iconn: IconClass.iconInstance.errorIcon,);
      },
    );
  }
}

