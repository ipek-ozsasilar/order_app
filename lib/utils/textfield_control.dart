import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/icon.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/constant/styles/text_input_border.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/enum/text_style_font.dart';
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
  int phoneLenght=10;
  int verifyCodeLenght=1;
  int emailLenght=150;
  final ValueNotifier<bool> hasDataNotifier;
  ValueNotifier<bool>? visibilityNotifier;
  Pattern emailRegExp=RegExp(r'[a-zA-Z0-9@\._\-\+]');
  Pattern passwordRegExp=RegExp(r'[a-zA-Z0-9]');
  TextInputType numberInputType=TextInputType.number;
  TextInputType emailInputType=TextInputType.emailAddress;
  TextInputType addressInputType=TextInputType.streetAddress;
  TextInputType passwordInputType=TextInputType.visiblePassword;
  BorderClass borderInstance=BorderClass();

  textfieldControlClass({
    required this.input,
    required this.fieldSize,
    required this.text,
    required this.hasDataNotifier,
    ValueNotifier<bool>? visibilityNotifier,
  }) : visibilityNotifier = visibilityNotifier ?? ValueNotifier<bool>(true);

  double widthControlFun() {
    return fieldSize.isFieldSizeLarge
        ? sizeClass.sizeInstance.buttonWidht
        : sizeClass.sizeInstance.nunitoTextSize;
  }

  double heightControlFun() {
    return input.isNumberResult
        ? (fieldSize.isFieldSizeLarge
            ? sizeClass.sizeInstance.appbarToolbar
            : sizeClass.sizeInstance.nunitoTextSize)
        : sizeClass.sizeInstance.normalTextFieldHeight;
  }

  EdgeInsets textfieldInsidePaddingControlFun() {
    return input.isNumberResult
        ? (fieldSize.isFieldSizeLarge
            ? paddingClass.paddingInstance.phoneNumberFieldPadding
            : paddingClass.paddingInstance.googleButtonTopPadding +
                paddingClass.paddingInstance.indicatorHorizantolSpace)
        : paddingClass.paddingInstance.zeroPadding;
  }

  Widget phoneNumberTextControl() {
    return (input.isNumberResult && fieldSize.isFieldSizeLarge)
        ? textWidget(
            color: colorClass.colorInstance.blueGreyColor,
            text: "Phone Number",
            textStyleWeight: TextStyleWeight.thin,
          )
        : SizedBox.shrink();
  }

  bool obsureTextPasswordControlWidget() {
    return visibilityNotifier != null
        ? (input.isPasswordResult ? visibilityNotifier!.value :!(visibilityNotifier!.value ) )
        : visibilityNotifier!.value ;
  }

  TextInputFormatter inputFormatterLengthControl() {
    return input.isNumberResult
        ? LengthLimitingTextInputFormatter(fieldSize.isFieldSizeLarge ? phoneLenght : verifyCodeLenght)
        : LengthLimitingTextInputFormatter(emailLenght);
  }

  TextInputFormatter inputFormatterControl() {
    return input.isNumberResult
        ? FilteringTextInputFormatter.digitsOnly
        : input.isEmailResult
            ? FilteringTextInputFormatter.allow(emailRegExp)
            : FilteringTextInputFormatter.allow(passwordRegExp);
  }

  TextInputType keyboardCheckFun() {
    return input.isNumberResult
        ? numberInputType
        : input.isEmailResult
            ? emailInputType
            : input.isAddressResult
                ? addressInputType
                : passwordInputType;
  }

  String? hintTextControl() {
    return fieldSize.isFieldSizeLarge ? text: countEmptyText;
  }

  Widget? prefixIconControl() {
    return (input.isNumberResult && fieldSize.isFieldSizeLarge)
        ? dropDownButtonWidget()
        : (input.isAddressResult && fieldSize.isFieldSizeLarge)
            ? IconWidget(
                iconn: IconClass.iconInstance.locationIcon,
                color: levelColor.levelColorInstance.hintColor,
              )
            : null;
  }

  Widget? suffixIconControl() {
    return fieldSize.isFieldSizeLarge
        ? ValueListenableBuilder<bool>(
            valueListenable: hasDataNotifier,
            builder: (context, hasDataValue, child) {
              return hasDataValue
                  ? passwordAnimationIconButton(
                      visibilityNotifier:
                          visibilityNotifier ?? ValueNotifier(true),
                      iconn: AnimatedIcons.add_event,
                      input: input,
                      control: textfieldControlClass(
                          input: input,
                          fieldSize: fieldSize,
                          text: text,
                          hasDataNotifier: hasDataNotifier),
                    )
                  : emptyWidget();
            },
          )
        : null;
  }
SizedBox emptyWidget() => SizedBox();

  InputBorder borderControl() {
    return fieldSize.isFieldSizeLarge
        ? borderInstance.outlineBorder()
        : borderInstance.underlineBorder();
  }
}
