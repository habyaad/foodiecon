import 'package:flutter/material.dart';
import 'package:foodiecon/app/data/utils/app_colors.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpPinField extends StatelessWidget {
  final TextEditingController controller;
  final int? pinLength;
  final bool? hasError;

  const OtpPinField(
      {super.key,
      required this.controller,
      this.pinLength = 4,
      this.hasError = false});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      autofocus: true,
      controller: controller,
      hideCharacter: false,
      highlight: true,
      highlightColor: AppColors.appOrange,
      defaultBorderColor: AppColors.lightGrey,
      hasTextBorderColor: AppColors.lightGrey,
      highlightPinBoxColor: Colors.white,
      maxLength: pinLength!,
      hasError: hasError!,
      pinBoxRadius: 12,
      pinBoxBorderWidth: 1,
      pinBoxColor: Colors.white,

      maskCharacter: "😎",
      onTextChanged: (text) {
        // setState(() {
        //   hasError = false;
        // });
      },
      onDone: (text) {
        print("DONE $text");
        print("DONE CONTROLLER ${controller.text}");
      },
      pinBoxWidth: 75,
      pinBoxHeight: 72,
      hasUnderline: false,
      wrapAlignment: WrapAlignment.spaceAround,
      pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
      pinTextStyle: TextStyle(fontSize: 22.0),
      pinTextAnimatedSwitcherTransition:
          ProvidedPinBoxTextAnimation.scalingTransition,
//                    pinBoxColor: Colors.green[100],
      pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
//                    highlightAnimation: true,
      highlightAnimationBeginColor: Colors.black,
      highlightAnimationEndColor: Colors.white12,
      keyboardType: TextInputType.number,
    );
  }
}
