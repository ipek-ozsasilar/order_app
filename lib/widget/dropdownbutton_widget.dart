import 'package:cook_order_app/components/dropdown_menu_item.dart';
import 'package:cook_order_app/widget/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:cook_order_app/enum/url_names_enum.dart';


class dropDownButtonWidget extends StatefulWidget {
  dropDownButtonWidget({super.key});

  @override
  State<dropDownButtonWidget> createState() => _dropDownButtonWidgetState();
}

class _dropDownButtonWidgetState extends State<dropDownButtonWidget> {
  String? selectedValue;
  dropdownMenuItemClass instance=dropdownMenuItemClass();


  void onChangedFun(String? value) {
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      hint: flagWidget(
        flagEnum: urlNames.abdFlag,
      ),
      items: instance.dropdownMenuItemWidget(),
      onChanged: onChangedFun,
    );
  }
  
  
}


