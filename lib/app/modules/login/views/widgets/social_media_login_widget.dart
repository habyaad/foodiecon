import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodiecon/app/data/utils/app_colors.dart';

class SocialMediaLoginWidget extends StatelessWidget {
  final String iconPath;

  const SocialMediaLoginWidget({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1, color: AppColors.lightGrey)),
      child: SvgPicture.asset(iconPath),
    );
  }
}
