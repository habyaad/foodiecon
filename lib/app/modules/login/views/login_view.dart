import 'package:flutter/material.dart';
import 'package:foodiecon/app/data/common/widgets/custom_text.dart';
import 'package:foodiecon/app/data/common/widgets/custom_text_form_field.dart';
import 'package:foodiecon/app/data/common/widgets/general_button.dart';
import 'package:foodiecon/app/modules/login/views/widgets/social_media_login_widget.dart';

import 'package:get/get.dart';

import '../../../data/utils/app_colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                const CustomText(
                  title: 'Login to your account.',
                  weight: FontWeight.w600,
                  size: 32,
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomText(
                  title: 'Please sign in to your account ',
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
                const CustomText(
                  title: 'Password',
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
                  height: 24,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: CustomText(
                    title: 'Forgot password?',
                    weight: FontWeight.w500,
                    size: 14,
                    color: AppColors.appOrange,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                GeneralButton(buttonText: "Sign In", onPressed: () {}),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: Get.width,
                  child: const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: AppColors.lightGrey,
                      )),
                      CustomText(
                        title: '  Or sign in with  ',
                        weight: FontWeight.w400,
                        size: 14,
                        color: AppColors.appGrey2,
                      ),
                      Expanded(
                          child: Divider(
                        color: AppColors.lightGrey,
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 40,
                  child: Center(
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, idx) => SocialMediaLoginWidget(
                              iconPath: controller.socialMediaPath[idx],
                            ),
                        separatorBuilder: (_, __) => const SizedBox(
                              width: 16,
                            ),
                        itemCount: controller.socialMediaPath.length),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: (){
                    Get.toNamed("/register");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        title: "Don't have an account? ",
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                      CustomText(
                        title: "Register",
                        weight: FontWeight.w500,
                        size: 14,
                        color: AppColors.appOrange,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
