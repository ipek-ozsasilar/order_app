import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/core/navigator_abstract.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/mixin/gesture_detector_text.dart';
import 'package:cook_order_app/sign_in_page.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/divider_widget.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
class createAccountPage extends StatefulWidget {
  const createAccountPage({super.key});

  @override
  State<createAccountPage> createState() => _createAccounPageState();
}

class _createAccounPageState extends State<createAccountPage>with gestureDetectorText implements navigatorProcess {
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
              weightText(text: "Hello! Create Account"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  thinText(
                      color: colorClass.colorInstance.blueGreyColor,
                      text: "Already have an account?  "),
                      InkwellText("Sign in",()=>pushMethod(context, signInPage())),
                ],
              ),
              
              Padding(
                padding: paddingClass.paddingInstance.onlyTopPadding,
                child: textFieldWidget(input: textFieldInputName.email,text: "Your name", iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.large),
              ),
              Padding(
                padding: paddingClass.paddingInstance.verticalPadding,
                child: textFieldWidget(input: textFieldInputName.email,text: "Username or Email", iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.large),
              ),
              textFieldWidget(input: textFieldInputName.password,text: "Password", iconn: AnimatedIcons.add_event, fieldSize: textFieldSize.large),
              Padding(
                padding: paddingClass.paddingInstance.sigInButtonPadding,
                child: textButton(
                  text: "Sign in",
                  page: signInPage(),
                  textColor: colorClass.colorInstance.whiteColor,
                  type: ButtonType.orange,
                ),
              ),

              dividerWidget(),
              Padding(
                padding: paddingClass.paddingInstance.googleButtonTopPadding,
                child: textButton(text: "Connect with Google", page: signInPage(), textColor:levelColor.levelColorInstance.textFieldBgColor, type: ButtonType.grayWithIcon),
              )

      
              
              
            
            ],
          ),
        ),
      ),
    );


  
  }
  
  @override
  void pushMethod(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return page;
    }));
  }
}
