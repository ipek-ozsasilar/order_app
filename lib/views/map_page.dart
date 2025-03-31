import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/enum/text_style_font.dart';
import 'package:cook_order_app/enum/url_names_enum.dart';
import 'package:cook_order_app/mixin/image_pull_mixin.dart';
import 'package:cook_order_app/views/sign_in_page.dart';
import 'package:cook_order_app/widget/cookstack_container.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:cook_order_app/widget/textfield_widget.dart';
import 'package:flutter/material.dart';

class mapPage extends StatefulWidget {
  const mapPage({super.key});

  @override
  State<mapPage> createState() => _mapPageState();
}

class _mapPageState extends State<mapPage> with assetsPull {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: sizeClass.sizeInstance.appbarToolbar,
      ),
      body: Padding(
        padding: paddingClass.paddingInstance.symetricHorizontal,
        child: Center(
          child: Column(
            children: [
              SizedBox(
              height: sizeClass.sizeInstance.cookStackHeight,
              width: sizeClass.sizeInstance.buttonWidht,
              child: Stack(
                children: [
                 cookStackContainerWidget(color: hexCodeColorClass.hexColorInstance.circleContainerColor,),
                      
                  Positioned(
                    left:sizeClass.sizeInstance.mapTopPositioned,
                    top: sizeClass.sizeInstance.selectionIndicatorSize,
                    child: imagePull(urlNames.map),
                    ),

                ],
                
              ),
            ),
             textWidget(text: "Find Nearby Restaurants",textStyleWeight: TextStyleWeight.thin) ,
             textWidget(
              color: colorClass.colorInstance.blueGreyColor, text: "Enter your location or allow access to your location to find restaurants near you.",
              textStyleWeight: TextStyleWeight.thin),
              Padding(
                padding: const EdgeInsets.only(top: 40,bottom: 10),
                child: textButton(text: "Use current location", /*page: signInPage(),*/ textColor:colorClass.colorInstance.blackColor, type: ButtonType.grayWithoutIcon),
              ),
              textFieldWidget(input: textFieldInputName.address,text: "Enter a new address", iconn: AnimatedIcons.close_menu, fieldSize: textFieldSize.large),
              
              
            
            ],
          ),
        ),
      ),
    );
  }
}
