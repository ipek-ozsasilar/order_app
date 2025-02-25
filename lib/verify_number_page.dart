import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/constant/url_address.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/mailSendCodePage.dart';
import 'package:cook_order_app/mixin/gesture_detector_text.dart';
import 'package:cook_order_app/mixin/url_mixin.dart';
import 'package:cook_order_app/sign_in_page.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';

class VerifyNumberPage extends StatefulWidget {
  const VerifyNumberPage({super.key});

  @override
  State<VerifyNumberPage> createState() => _VerifyNumberPageState();
}

class _VerifyNumberPageState extends State<VerifyNumberPage>with gestureDetectorText ,UrlMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: sizeClass.sizeInstance.secondPageToolbar,
      ),
      body: Padding(
        padding: paddingClass.paddingInstance.symetricHorizontal,
        child: Center(
          child: Column(
            children: [
              cookStack(),
              weightText(text: "Verify phone number"),
              thinText(
                  color: colorClass.colorInstance.blueGreyColor,
                  text: "We have just sent a code to +12025550132."),
              Padding(
                padding: const EdgeInsets.only(top: 25,bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textFieldWidget(input: textFieldInputName.number, iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.small),
                    textFieldWidget(input: textFieldInputName.number, iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.small),
                    textFieldWidget(input: textFieldInputName.number, iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.small),
                    textFieldWidget(input: textFieldInputName.number, iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.small),
                  ],
                ),
              ),
              Padding(
                padding: paddingClass.paddingInstance.sigInButtonPadding,
                child: textButton(
                  text: "Next",
                  page: mailSendCodePage(),
                  textColor: colorClass.colorInstance.whiteColor,
                  type: ButtonType.orange,
                ),
              ),

              textButton(text: "Send again", page: signInPage(), textColor: colorClass.colorInstance.blackColor, type: ButtonType.grayWithoutIcon),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: thinText(color: colorClass.colorInstance.blueGreyColor, text: "By signing up you agree to"),
              ),

            
              InkwellText("our terms of service and privacy policy.",()=>openUrlMethod(urlAddress.urlAddressInstance.PolicyAddress)),
              
              
            
            ],
          ),
        ),
      ),
    );


  
  }
}
