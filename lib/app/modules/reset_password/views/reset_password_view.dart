import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/common/widgets/custom_appbar.dart';
import '../../../data/common/widgets/custom_text.dart';
import '../../../data/common/widgets/custom_text_form_field.dart';
import '../../../data/common/widgets/general_button.dart';
import '../../../data/utils/app_colors.dart';
import '../../forgot_password/views/widgets/success_modal.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(
          title: 'Reset Password',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              const CustomText(
                title: 'Reset Password',
                weight: FontWeight.w600,
                size: 32,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                title:
                    'Your new password must be different from the previously used password',
                weight: FontWeight.w400,
                size: 14,
                color: AppColors.appGrey2,
              ),
              const SizedBox(
                height: 32,
              ),
              const CustomText(
                title: 'New Password',
                weight: FontWeight.w400,
                size: 14,
              ),
              const SizedBox(
                height: 8,
              ),
              Obx(() {
                return CustomTextFormField(
                    hintText: "Password",
                    obscureText: !controller.passwordVisibility.value,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.toggleVisibility();
                      },
                      child: Icon(
                        controller.passwordVisibility.value == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 16,
                        color: AppColors.appBlack,
                      ),
                    ));
              }),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                title: "Must be at least 8 character",
                weight: FontWeight.w400,
                color: AppColors.appGrey2,
                size: 14,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomText(
                title: 'Confirm Password',
                weight: FontWeight.w400,
                size: 14,
              ),
              const SizedBox(
                height: 8,
              ),
              Obx(() {
                return CustomTextFormField(
                    hintText: "Password",
                    obscureText: !controller.passwordVisibility.value,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        controller.toggleVisibility();
                      },
                      child: Icon(
                        controller.passwordVisibility.value == true
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 16,
                        color: AppColors.appBlack,
                      ),
                    ));
              }),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                title: "Both password must match",
                weight: FontWeight.w400,
                color: AppColors.appGrey2,
                size: 14,
              ),
              const Spacer(),
              GeneralButton(
                  buttonText: "Verify account",
                  onPressed: () {
                    SuccessBottomSheet.show(context);
                  }),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ));
  }
}
