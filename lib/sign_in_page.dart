import 'package:cook_order_app/core/navigator_abstract.dart';
import 'package:cook_order_app/create_account_page.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/mailSendCodePage.dart';
import 'package:cook_order_app/mixin/gesture_detector_text.dart';
import 'package:cook_order_app/phone_number_page.dart';
import 'package:cook_order_app/widget/divider_widget.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/text_widget.dart';

class signInPage extends StatefulWidget {
  const signInPage({super.key});

  @override
  State<signInPage> createState() => _signInPageState();
}

class _signInPageState extends State<signInPage> with gestureDetectorText implements navigatorProcess{

  
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
              weightText(text: "Welcome Back"),
              thinText(
                  color: colorClass.colorInstance.blueGreyColor,
                  text: "Hello Jos, sign in to continue! Or"),
              InkwellText("Create new account",()=>pushMethod(context, createAccountPage())),
              Padding(
                padding: paddingClass.paddingInstance.emailTextFieldPadding,
                child: textFieldWidget(
                    input: textFieldInputName.email,
                    text: "Username or Email",
                    iconn: AnimatedIcons.pause_play,
                    fieldSize: textFieldSize.large,
                    ),
              ),
              textFieldWidget(
                input: textFieldInputName.password,
                text: "Password",
                iconn: AnimatedIcons.view_list,
                fieldSize: textFieldSize.large,
              ),
              Padding(
                padding: paddingClass.paddingInstance.sigInButtonPadding,
                child: textButton(
                  text: "Sign in",
                  page: phoneNumberPage(),
                  textColor: colorClass.colorInstance.whiteColor,
                  type: ButtonType.orange,
                ),
              ),
              InkwellText("Forgot password?",()=>pushMethod(context, mailSendCodePage())),
              Padding(
                padding: paddingClass.paddingInstance.dividerPadding,
                child: dividerWidget(),
              ),
              textButton(
                text: "Connect with Google",
                page: phoneNumberPage(),
                textColor: colorClass.colorInstance.blackColor,
                type: ButtonType.grayWithIcon,
              )
            ],
          ),
        ),
      ),
    );
  }
  
  @override
  void pushMethod(BuildContext context,Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return page;
    }));
  }
  
}
