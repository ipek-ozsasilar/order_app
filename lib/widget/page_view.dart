import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/text_style_font.dart';
import 'package:cook_order_app/enum/url_names_enum.dart';
import 'package:cook_order_app/widget/cook_stack.dart';
import 'package:cook_order_app/widget/stack_widget.dart';
import 'package:cook_order_app/widget/text_widget.dart';
import 'package:flutter/material.dart';

class pageViewWidget extends StatefulWidget {
   pageViewWidget({super.key, required this.onPageChanged});
  final Function(int) onPageChanged; // Callback fonksiyonu tanımlıyoruz

  @override
  State<pageViewWidget> createState() => _pageViewWidgetState();
}

class _pageViewWidgetState extends State<pageViewWidget> {
  late PageController controller;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=PageController();
  }
  @override
  Widget build(BuildContext context) {
    return PageView(
              controller: controller,
              onPageChanged:widget.onPageChanged,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: sizeClass.sizeInstance.stackHeight,
                      child: stackWidget(
                        url: urlNames.fruit,
                      ),
                    ),
                    Padding(
                      padding: paddingClass.paddingInstance.onlyPadding,
                      child: textWidget(text: "Diverse & sparkling food",textStyleWeight: TextStyleWeight.bold),
                    ),
                    Padding(
                      padding: paddingClass.paddingInstance.symetricHorizontal,
                      child: textWidget(
                          text:
                              "We use the best local ingredients to create fresh and delicious food and drinks.",
                              color:colorClass.colorInstance.blueGreyColor,
                              textStyleWeight: TextStyleWeight.thin,
                              ),
                    ),
                  ],
                ),


                Column(
                  children: [
                    SizedBox(
                      height: 320,
                      child: stackWidget(
                        url: urlNames.car,
                      ),
                    ),
                    Padding(
                      padding: paddingClass.paddingInstance.onlyPadding,
                      child: textWidget(text: "Free shipping on all orders",textStyleWeight: TextStyleWeight.bold),
                    ),
                    Padding(
                      padding: paddingClass.paddingInstance.symetricHorizontal,
                      child: textWidget(
                          text:
                              "Free shipping on the primary order whilst the usage of CaPay fee method.",
                              color:colorClass.colorInstance.blueGreyColor,
                              textStyleWeight: TextStyleWeight.thin,
                              ),
                    ),
                  ],
                ),


                Column(
                  children: [
                    SizedBox(
                      height: 320,
                      child: stackWidget(
                        url: urlNames.chair,
                      ),
                    ),
                    Padding(
                      padding: paddingClass.paddingInstance.onlyPadding,
                      child: textWidget(text: "+24K Restaurants",textStyleWeight: TextStyleWeight.bold),
                    ),
                    Padding(
                      padding: paddingClass.paddingInstance.symetricHorizontal,
                      child: textWidget(
                          text:
                              "Easily find your favorite food and have it delivered in record time.",
                              color:colorClass.colorInstance.blueGreyColor,
                              textStyleWeight: TextStyleWeight.thin
                              ),
                    ),
                  ],
                ),
              ],
            );
  }
}

