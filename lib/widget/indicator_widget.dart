import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/enum/page_number_enum.dart';
import 'package:cook_order_app/extension/page_index_extension.dart';
import 'package:cook_order_app/widget/custom_container.dart';
import 'package:flutter/material.dart';

class indicatorWidget extends StatelessWidget {
  const indicatorWidget({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customContainer(index: pageNumber.firstPage.pageIndexFun(), currentIndex: currentIndex),
        Padding(
          padding:paddingClass.paddingInstance.indicatorHorizantolSpace,
          child: customContainer(index: pageNumber.secondPage.pageIndexFun(), currentIndex: currentIndex),
         
        ),
        customContainer(index: pageNumber.thirdPage.pageIndexFun(), currentIndex: currentIndex),
        
        
      ],
    );
  }
}


