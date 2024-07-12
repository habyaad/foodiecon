import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';

class GeneralButton extends StatelessWidget {
  final Color? buttonColor;
  final String buttonText;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? iconSize;
  final double? height;
  final Widget? icon;
  final double? width;
  final double? borderRadius;
  final Border? border;
  final void Function() onPressed;

  const GeneralButton(
      {super.key,
      this.buttonColor,
      required this.buttonText,
      this.textColor,
      required this.onPressed,
      this.borderRadius,
      this.height,
      this.fontWeight,
      this.fontSize,
      this.border,
      this.width,
      this.icon,
      this.iconSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        height: height ?? 52,
        width: width ?? Get.width,
        decoration: BoxDecoration(
          border: border,
          borderRadius: BorderRadius.circular(borderRadius ?? 100),
          color: buttonColor ?? AppColors.appOrange,
          // border: Border.all(width: 3, color: AppColor.primary)
          //border: Border.all(width: 3, color: AppColor.primary)
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: fontSize ?? 15,
                fontWeight: fontWeight ?? FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
