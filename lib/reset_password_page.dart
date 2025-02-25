import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/mixin/gesture_detector_text.dart';
import 'package:cook_order_app/sign_in_page.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
class resetPasswordPage extends StatefulWidget {
  const resetPasswordPage({super.key});

  @override
  State<resetPasswordPage> createState() => _resetPasswordPage();
}

class _resetPasswordPage extends State<resetPasswordPage>with gestureDetectorText {
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
              weightText(text: "Reset your password"),
              thinText(
                  color: colorClass.colorInstance.blueGreyColor,
                  text: "At least 8 characters including uppercase and lowercase letters"),
              Padding(
                padding:paddingClass.paddingInstance.emailTextFieldPadding,
                child: textFieldWidget(input: textFieldInputName.password,text: "New Password", iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.large),
              ),
              textFieldWidget(input: textFieldInputName.password,text: "Confirm Password", iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.large),
              
              Padding(
                padding: paddingClass.paddingInstance.sigInButtonPadding,
                child: textButton(
                  text: "Update",
                  page: signInPage(),
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
