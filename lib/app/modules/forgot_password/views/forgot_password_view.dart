import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/common/widgets/custom_text.dart';
import '../../../data/common/widgets/custom_text_form_field.dart';
import '../../../data/common/widgets/general_button.dart';
import '../../../data/utils/app_colors.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              const CustomText(
                title: 'Forgot password?',
                weight: FontWeight.w600,
                size: 32,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                title:
                    'Enter your email address and we’ll send you confirmation code to reset your password',
                weight: FontWeight.w400,
                size: 14,
                color: AppColors.appGrey2,
              ),
              const SizedBox(
                height: 32,
              ),
              const CustomText(
                title: 'Email Address',
                weight: FontWeight.w400,
                size: 14,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomTextFormField(
                hintText: "Email address",
              ),
              const SizedBox(
                height: 14,
              ),
              const Spacer(),
              GeneralButton(
                  buttonText: "Continue",
                  onPressed: () {
                    Get.toNamed("/otp");
                  }),
              const SizedBox(
                height: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
