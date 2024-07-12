import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:foodiecon/app/data/common/widgets/custom_appbar.dart';
import 'package:foodiecon/app/data/common/widgets/general_button.dart';
import 'package:foodiecon/app/modules/otp/views/widgets/otp_pin_field.dart';

import 'package:get/get.dart';

import '../../../data/common/widgets/custom_text.dart';
import '../../../data/utils/app_colors.dart';
import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(
          title: 'OTP',
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
                title: 'Email verification',
                weight: FontWeight.w600,
                size: 32,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                title:
                    'Enter the verification code we send you on: Alberts******@gmail.com|',
                weight: FontWeight.w400,
                size: 14,
                color: AppColors.appGrey2,
              ),
              const SizedBox(
                height: 32,
              ),
              OtpPinField(
                controller: controller.pinController,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  //Get.toNamed("/login");
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: "Didn’t receive code? ",
                      weight: FontWeight.w500,
                      size: 14,
                    ),
                    CustomText(
                      title: "Resend",
                      weight: FontWeight.w500,
                      size: 14,
                      color: AppColors.appOrange,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.timelapse,
                    color: AppColors.appGrey2,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  TimerCountdown(
                    format: CountDownTimerFormat.minutesSeconds,
                    enableDescriptions: false,
                    endTime: DateTime.now().add(
                      const Duration(
                        minutes: 10,
                        seconds: 0,
                      ),
                    ),
                    onEnd: () {
                      log("Timer finished");
                    },
                  ),
                ],
              ),
              const Spacer(),
              GeneralButton(
                  buttonText: "Continue",
                  onPressed: () {
                    Get.toNamed("/reset-password");
                  }),
              const SizedBox(
                height: 24,
              )
            ],
          ),
        ));
  }
}
