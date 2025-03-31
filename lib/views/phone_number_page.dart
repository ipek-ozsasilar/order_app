import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/enum/text_style_font.dart';
import 'package:cook_order_app/views/verify_number_page.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';
class phoneNumberPage extends StatefulWidget {
  const phoneNumberPage({super.key});

  @override
  State<phoneNumberPage> createState() => _phoneNumberPageState();
}

class _phoneNumberPageState extends State<phoneNumberPage> {
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
              textWidget(text: "Get started with Cook",textStyleWeight: TextStyleWeight.bold),
              textWidget(
                  color: colorClass.colorInstance.blueGreyColor,
                  text: "Enter your phone number",
                  textStyleWeight: TextStyleWeight.thin
                  ),
              Padding(
                padding: const EdgeInsets.only(top: 25,bottom: 15),
                child: textFieldWidget(text: "202 555 0132", input: textFieldInputName.number, iconn:AnimatedIcons.add_event,fieldSize: textFieldSize.large,),
              ),
              Padding(
                padding: paddingClass.paddingInstance.sigInButtonPadding,
                child: textButton(
                  text: "Next",
                  //page: VerifyNumberPage(),
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