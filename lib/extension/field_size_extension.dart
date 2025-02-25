import 'package:cook_order_app/enum/field_size_enum.dart';


extension fieldSizeExtension on textFieldSize{
  bool get isFieldSizeLarge => this==textFieldSize.large;
  bool get isFieldSizeSmall => this==textFieldSize.small;
}
