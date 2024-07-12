import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/common/widgets/custom_text.dart';
import '../../../data/common/widgets/custom_text_form_field.dart';
import '../../../data/common/widgets/general_button.dart';
import '../../../data/utils/app_colors.dart';
import '../../login/views/widgets/social_media_login_widget.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

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
                  title: 'Create your new account',
                  weight: FontWeight.w600,
                  size: 32,
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomText(
                  title:
                      'Create an account to start looking for the food you like',
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
                  title: 'User Name',
                  weight: FontWeight.w400,
                  size: 14,
                ),
                const SizedBox(
                  height: 8,
                ),
                const CustomTextFormField(
                  hintText: "Username",
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
                  height: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (val) {},
                      activeColor: AppColors.appOrange,
                    ),
                    Expanded(
                      child: RichText(
                          text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'I Agree with '),
                          TextSpan(
                              text: 'Terms of Service ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: 'and ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                GeneralButton(buttonText: "Register", onPressed: () {}),
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
                        title: '  Or sign up with  ',
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
                    Get.toNamed("/login");
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        title: "Already have an account? ",
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                      CustomText(
                        title: "Sign In",
                        weight: FontWeight.w500,
                        size: 14,
                        color: AppColors.appOrange,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12,)
              ],
            )),
      ),
    );
  }
}
