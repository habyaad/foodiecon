import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_colors.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? verticalPadding;
  final double? elevation;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function()? onPressed;

  const CustomAppBar(
      {super.key,
      required this.title,
      this.suffixIcon,
      this.onPressed,
      this.prefixIcon,
      this.verticalPadding,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 10, vertical: verticalPadding ?? 0),
      child: AppBar(
        scrolledUnderElevation: 0,
        elevation: elevation ?? 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: CustomText(
          title: title,
          size: 18,
          weight: FontWeight.w700,
          color: AppColors.appBlack,
        ),
        leading: prefixIcon ??
            InkWell(
                onTap: onPressed ??
                    () {
                      Get.back();
                    },
                child: Align(
                  child: Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: AppColors.lightGrey, width: 1)),
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 16,
                    ),
                  ),
                )),
        actions: [suffixIcon ?? const SizedBox()],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
