import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/mixin/gesture_detector_text.dart';
import 'package:cook_order_app/verify_mail_page.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
class mailSendCodePage extends StatefulWidget {
  const mailSendCodePage({super.key});

  @override
  State<mailSendCodePage> createState() => _mailSendCodePageState();
}

class _mailSendCodePageState extends State<mailSendCodePage>with gestureDetectorText {
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
              weightText(text: "Password Recovery"),
              thinText(
                  color: colorClass.colorInstance.blueGreyColor,
                  text: "Enter your email to recover your password"),
             Padding(
               padding: const EdgeInsets.only(top: 24),
               child: textFieldWidget(input: textFieldInputName.email, iconn: AnimatedIcons.add_event, fieldSize:textFieldSize.large),
             ),
              Padding(
                padding: paddingClass.paddingInstance.sigInButtonPadding,
                child: textButton(
                  text: "Sign in",
                  page: VerifyMailPage(),
                  textColor: colorClass.colorInstance.whiteColor,
                  type: ButtonType.orange,
                ),
              ),

             
              
            
            ],
          ),
        ),
      ),
    );


  
  }
}
