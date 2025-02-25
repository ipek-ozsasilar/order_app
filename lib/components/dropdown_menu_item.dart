import 'package:cook_order_app/enum/url_names_enum.dart';
import 'package:cook_order_app/widget/flag_widget.dart';
import 'package:flutter/material.dart';

class dropdownMenuItemClass {
  MainAxisAlignment mainAligment = MainAxisAlignment.spaceBetween;

  final Map<String, String> countryCodes = {
    "Türkiye": "+90",
    "ABD": "+1",
    "Almanya": "+49",
  };

  List<DropdownMenuItem<String>> dropdownMenuItemWidget() {
    return countryCodes.entries.map((e) {
      return DropdownMenuItem(
        value: e.key,
        child: Row(
          mainAxisAlignment: mainAligment,
          children: [
            flagWidget(
              flagEnum: e.key == "Türkiye"
                  ? urlNames.turkiyeFlag
                  : e.key == "ABD"
                      ? urlNames.abdFlag
                      : urlNames.germanyFlag,
            ),
            Text(e.value),
          ],
        ),
      );
    }).toList();
  }
}
