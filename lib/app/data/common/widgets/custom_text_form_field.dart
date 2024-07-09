import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final double? borderSize;
  final int? maxLine;
  final int? maxLength;
  final int? minLine;
  final InputBorder? border;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const CustomTextFormField(
      {super.key,
        this.hintText,
        this.suffixIcon,
        this.fillColor,
        this.controller,
        this.validator,
        this.keyboardType,
        this.border,
        this.obscureText,
        this.borderSize,
        this.maxLine,
        this.minLine,
        this.maxLength});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine ?? 1,
      minLines: minLine,
      maxLength: maxLength,
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.all(16),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: fillColor ?? Colors.white,
        hintText: hintText ?? '',
        hintStyle: const TextStyle(
            color: AppColors.appGrey2,
            fontSize: 15,
            fontWeight: FontWeight.w400),
        border: border ??
            OutlineInputBorder(
              borderSide: BorderSide(
                  width: borderSize ?? 1, color: AppColors.lightGrey),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
        errorBorder: OutlineInputBorder(
          borderSide:
          BorderSide(width: borderSize ?? 1, color: Colors.red),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.lightGrey,
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.appBlack,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}