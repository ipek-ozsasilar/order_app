import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/size.dart';
import 'package:cook_order_app/enum/button_icon_state.dart';
import 'package:cook_order_app/sign_in_page.dart';
import 'package:cook_order_app/widget/indicator_widget.dart';
import 'package:cook_order_app/widget/page_view.dart';
import 'package:cook_order_app/widget/text_button.dart';
import 'package:flutter/material.dart';
import 'package:cook_order_app/constant/padding.dart';

class startedPage extends StatefulWidget {
  const startedPage({super.key});

  @override
  State<startedPage> createState() => _startedPageState();
}

class _startedPageState extends State<startedPage> {
  int currentIndex = 0;

  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: sizeClass.sizeInstance.appbarToolbar,
      ),
      body: Column(
        children: [
          SizedBox(
            height: sizeClass.sizeInstance.pageViewHeight,
            child: pageViewWidget(
              onPageChanged: updateIndex,
            ),
          ),
          Padding(
            padding: paddingClass.paddingInstance.verticalIndicatorPadding,
            child: indicatorWidget(currentIndex: currentIndex),
          ),
          textButton(
            text: "Get Started",
            page: signInPage(),
            textColor: colorClass.colorInstance.whiteColor,
            type: ButtonType.orange,
          ),

          
        ],
      ),
    );
  }
}



