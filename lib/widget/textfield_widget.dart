import 'package:cook_order_app/constant/border_radius.dart';
import 'package:cook_order_app/constant/boxshape.dart';
import 'package:cook_order_app/constant/color.dart';
import 'package:cook_order_app/constant/padding.dart';
import 'package:cook_order_app/enum/field_size_enum.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/utils/textfield_control.dart';
import 'package:flutter/material.dart';

//key veya context ıle erısılebılır mı valıdatore
//context.findAncestorStateOfType<_MyFormState>();
//try catch added
//yorum satırı , performans
//contaıner control fıeld arası provıder
//routing
//testing
//textbutton onpressed ve pagelerını hallet ? kaldır onpresseddan
//textfıeldın controllerı ? yaptın duzenle

class textFieldWidget extends StatefulWidget {
  textFieldInputName input;
  textFieldSize fieldSize;
  AnimatedIconData iconn;
  String? text = "";
  TextEditingController? controller;

  textFieldWidget({
    Key? key,
    required this.input,
    required this.iconn,
    required this.fieldSize,
    this.text,
    this.controller,
  }) : super(key: key);

  @override
  State<textFieldWidget> createState() => _textFieldWidgetState();
}

class _textFieldWidgetState extends State<textFieldWidget> {
  bool filledSelection = true;
  BorderSide side = BorderSide.none;
  late textfieldControlClass controlInstance;
  String? counterText = "";
  CrossAxisAlignment align = CrossAxisAlignment.start;
  late final ValueNotifier<bool> hasDataNotifier = ValueNotifier<bool>(false);
  TextInputAction nextAction=TextInputAction.next;

  @override
  void initState() {
    super.initState();
    controlInstance = textfieldControlClass(
        input: widget.input,
        fieldSize: widget.fieldSize,
        text: widget.text,
        hasDataNotifier: hasDataNotifier
        );
  }

  void textFieldOnChanged(String? value) {
    if (value != null) {
      setState(() {
        hasDataNotifier.value = value.isNotEmpty;
      });
    }
  }

  InputDecoration inputDecorationFun() {
    return InputDecoration(
      hintText: controlInstance.hintTextControl(),
      hintStyle: getHintStyle(),
      prefixIcon: controlInstance.prefixIconControl(),
      suffixIcon: controlInstance.suffixIconControl(),
      filled: true,
      fillColor: levelColor.levelColorInstance.textFieldBgColor,
      contentPadding: paddingClass.paddingInstance.textFieldLeftPadding,
      border: controlInstance.borderControl(),
    );
  }

  TextStyle getHintStyle() {
    return TextStyle(
      color: levelColor.levelColorInstance.hintColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: controlInstance.widthControlFun(),
      height: controlInstance.heightControlFun(),
      decoration: outContainerDecoration(),
      child: Padding(
        padding: controlInstance.textfieldInsidePaddingControlFun(),
        child: Column(
          crossAxisAlignment: align,
          children: [
            controlInstance.phoneNumberTextControl(),
            ValueListenableBuilder<bool>(
                valueListenable:
                    controlInstance.visibilityNotifier ?? ValueNotifier(true),
                builder: (context, visibilityValue, child) {
                  return TextFormField(
                    validator: (value) {},
                    keyboardType: controlInstance.keyboardCheckFun(),
                    obscureText:
                        controlInstance.obsureTextPasswordControlWidget(),
                    controller: widget.controller,
                    textInputAction:nextAction,
                    inputFormatters: [
                      controlInstance.inputFormatterLengthControl(),
                      controlInstance.inputFormatterControl(),
                    ],
                    onChanged: textFieldOnChanged,
                    decoration: inputDecorationFun(),
                  );
                })
          ],
        ),
      ),
    );
  }



  BoxDecoration outContainerDecoration() {
    return BoxDecoration(
      color: levelColor.levelColorInstance.textFieldBgColor,
      shape: boxShapeClass.rectangleShape,
      borderRadius: borderRadiusClass.radiusInstance.textFieldRadius,
    );
  }
}
