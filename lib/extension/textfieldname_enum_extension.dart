import 'package:cook_order_app/enum/text_field_name.dart';

extension InputExtension on textFieldInputName {
  bool get isNumberResult => this == textFieldInputName.number;
  bool get isEmailResult => this == textFieldInputName.email;
  bool get isPasswordResult => this == textFieldInputName.password;
  bool get isAddressResult => this == textFieldInputName.address;
}