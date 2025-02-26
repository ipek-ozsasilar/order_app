import 'package:cook_order_app/constant/border_radius.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/icon.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/extension/field_size_extension.dart';
import 'package:cook_order_app/extension/textfieldname_enum_extension.dart';
import 'package:cook_order_app/widget/dropdownbutton_widget.dart';
import 'package:cook_order_app/widget/icon_widget.dart';
import 'package:cook_order_app/widget/password_animation_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class textfieldControlClass {
  final textFieldInputName input;
  final textFieldSize fieldSize;
  String? text = "";
  String? countEmptyText = "";
  BorderSide side = BorderSide.none;
  final ValueNotifier<bool> hasDataNotifier;
  bool visibility = true;
  ValueNotifier<bool>? visibilityNotifier;
 
  


  textfieldControlClass({
    required this.input,
    required this.fieldSize,
    required this.text,
    required this.hasDataNotifier,
    ValueNotifier<bool>? visibilityNotifier,
  }) : visibilityNotifier = visibilityNotifier ?? ValueNotifier<bool>(true);

  double widthControlFun() {
    if (fieldSize.isFieldSizeLarge) {
      return sizeClass.sizeInstance.buttonWidht;
    } else {
      return sizeClass.sizeInstance.nunitoTextSize;
    }
  }

  double heightControlFun() {
    if (input.isNumberResult && fieldSize.isFieldSizeLarge) {
      return sizeClass.sizeInstance.appbarToolbar;
    } else if (input.isNumberResult && fieldSize.isFieldSizeSmall) {
      return sizeClass.sizeInstance.nunitoTextSize;
    } else {
      return sizeClass.sizeInstance.normalTextFieldHeight;
    }
  }

  EdgeInsets textfieldInsidePaddingControlFun() {
    if (input.isNumberResult) {
      return fieldSize.isFieldSizeLarge
          ? paddingClass.paddingInstance.phoneNumberFieldPadding
          : paddingClass.paddingInstance.googleButtonTopPadding +
              paddingClass.paddingInstance.indicatorHorizantolSpace;
    }
    return paddingClass.paddingInstance.zeroPadding;
  }

  Widget phoneNumberTextControl() {
    if (input.isNumberResult && fieldSize.isFieldSizeLarge) {
      return thinText(
          color: colorClass.colorInstance.blueGreyColor, text: "Phone Number");
    } else {
      return SizedBox.shrink();
    }
  }
  

  bool obsureTextPasswordControlWidget() {
  if (visibilityNotifier!=null) {
    return input.isPasswordResult ? visibilityNotifier!.value : false;
  }else{
    return true;
  }
}

  TextInputFormatter inputFormatterLengthControl() {
    if (input.isNumberResult) {
      return fieldSize.isFieldSizeLarge
          ? LengthLimitingTextInputFormatter(10)
          : LengthLimitingTextInputFormatter(1);
    } else {
      return LengthLimitingTextInputFormatter(20);
    }
  }

  TextInputFormatter inputFormatterControl() {
    if (input.isNumberResult) {
      return FilteringTextInputFormatter.digitsOnly;
    } else {
      return FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@._-]'));
    }
  }

  TextInputType keyboardCheckFun() {
    if (input.isNumberResult) {
      return TextInputType.number;
    } else if (input.isEmailResult) {
      return TextInputType.emailAddress;
    } else if (input.isAddressResult) {
      return TextInputType.streetAddress;
    } else {
      return TextInputType.visiblePassword;
    }
  }

  String? hintTextControl() {
    return fieldSize.isFieldSizeLarge ? text : countEmptyText ?? "";
  }

  Widget? prefixIconControl() {
    if (input.isNumberResult && fieldSize.isFieldSizeLarge) {
      return dropDownButtonWidget();
    } else if (input.isAddressResult && fieldSize.isFieldSizeLarge) {
      return IconWidget(
        iconn:IconClass.iconInstance.locationIcon,
        color: levelColor.levelColorInstance.hintColor,
      );
    } else {
      return null;
      
    }
  }

  Widget? suffixIconControl() {


    if (fieldSize.isFieldSizeLarge) {
      return ValueListenableBuilder<bool>(
      valueListenable: hasDataNotifier,
      builder: (context, hasDataValue, child) {
        if (hasDataValue) {
          return passwordAnimationIconButton(
            visibilityNotifier: visibilityNotifier ?? ValueNotifier(true),
            iconn: AnimatedIcons.add_event,
            input: input,
            control: textfieldControlClass(input: input, fieldSize: fieldSize, text: text, hasDataNotifier: hasDataNotifier),
          );
        }else{
          return SizedBox();
        }
      },
    );
    }else{
      return null;
    }
    
  }

  InputBorder borderControl() {
    if (fieldSize.isFieldSizeLarge) {
      return OutlineInputBorder(
        borderRadius: borderRadiusClass.radiusInstance.textFieldRadius,
        borderSide: side,
      );
    } else {
      return UnderlineInputBorder(
        borderSide: BorderSide(
          color: colorClass.colorInstance.blackColor,
          width: 1.0,
        ),
      );
    }
  }
}
