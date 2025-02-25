import 'package:cook_order_app/constant/duration.dart';
import 'package:cook_order_app/enum/text_field_name.dart';
import 'package:cook_order_app/extension/textfieldname_enum_extension.dart';
import 'package:cook_order_app/utils/textfield_control.dart';
import 'package:flutter/material.dart';

class passwordAnimationIconButton extends StatefulWidget {
  textFieldInputName input;
  AnimatedIconData iconn;
  final ValueNotifier<bool> visibilityNotifier;
  final textfieldControlClass control;
  passwordAnimationIconButton(
      {super.key,
      required this.iconn,
      required this.input,
      required this.control,
      required this.visibilityNotifier});

  @override
  State<passwordAnimationIconButton> createState() =>
      _passwordAnimationIconButtonState();
}

class _passwordAnimationIconButtonState
    extends State<passwordAnimationIconButton> with TickerProviderStateMixin {
  final ValueNotifier<bool> visibilityNotifier = ValueNotifier<bool>(true);
  bool visibility = true;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: durationClass.secondTwoDuration);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: widget.input.isPasswordResult
            ? () {
                visibility
                    ? animationController.animateTo(1)
                    : animationController.animateTo(0);
                setState(() {
                  visibility = !visibility;
                });

                widget.visibilityNotifier.value = visibility;
              }
            : null,
        icon: AnimatedIcon(
          icon: widget.iconn,
          progress: animationController,
        ));
  }
}
