import 'package:flutter/material.dart';
import 'package:foodiecon/app/data/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextDecoration? underline;

  const CustomText({
    super.key,
    this.title,
    this.size,
    this.color,
    this.weight,
    this.height,
    this.textAlign,
    this.overflow,
    this.underline,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title!,
        textAlign: textAlign ?? TextAlign.left,
        style: GoogleFonts.inter(
            textStyle: TextStyle(
              decoration: underline ?? TextDecoration.none,
              color: color ?? AppColors.appBlack,
              height: height,
              fontSize: size,
              fontWeight: weight ?? FontWeight.normal,
              overflow: overflow ?? TextOverflow.clip,
            )));
  }
}