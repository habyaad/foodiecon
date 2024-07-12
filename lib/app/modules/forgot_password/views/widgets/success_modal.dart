import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodiecon/app/data/utils/app_colors.dart';

import '../../../../data/common/widgets/custom_text.dart';

class SuccessBottomSheet extends StatelessWidget {
  static show(
    BuildContext context,
  ) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        builder: (context) {
          return const SuccessBottomSheet._();
        });
  }

  const SuccessBottomSheet._();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 30),
        constraints: const BoxConstraints(maxHeight: 400),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            SvgPicture.asset("assets/svgs/Illustration_Success.svg"),
            const SizedBox(
              height: 32,
            ),
            const CustomText(
              title: 'Password Changed',
              weight: FontWeight.w600,
              size: 24,
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomText(
              title:
                  'Password changed successfully, you can login again with a new password',
              weight: FontWeight.w500,
              color: AppColors.appGrey2,
              textAlign: TextAlign.center,
              size: 14,
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
