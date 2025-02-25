import 'package:cook_order_app/enum/page_number_enum.dart';

extension PageIndex on pageNumber{
  int pageIndexFun() {
    switch (this) {
      case pageNumber.firstPage:
      return 0;
      case pageNumber.secondPage:
      return 1;
      default:
      return 2;
    }
    
  }
}
