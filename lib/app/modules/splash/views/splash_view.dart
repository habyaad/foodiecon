import 'package:flutter/material.dart';
import 'package:foodiecon/app/data/common/widgets/custom_text.dart';
import 'package:foodiecon/app/data/utils/app_colors.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Obx(() {
        return SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              "assets/images/onboarding-${controller.count}.png",
              fit: BoxFit.cover,
            ));
      }),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.all(32),
          margin: const EdgeInsets.only(bottom: 40),
          width: 311,
          height: 400,
          decoration: BoxDecoration(
              color: AppColors.appOrange,
              borderRadius: BorderRadius.circular(48)),
          child: Column(
            children: [
              const CustomText(
                title: "We serve incomparable delicacies",
                color: Colors.white,
                textAlign: TextAlign.center,
                weight: FontWeight.w600,
                size: 32,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomText(
                title:
                    "All the best restaurants with their top menu waiting for you, they cant’t wait for your order!!",
                color: Colors.white,
                textAlign: TextAlign.center,
                size: 14,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 6,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, idx) {
                      return Obx(() {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          height: 6,
                          width: 24,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: idx + 1 == controller.count.value
                                  ? Colors.white
                                  : AppColors.appGrey),
                        );
                      });
                    },
                    separatorBuilder: (ctx, idx) {
                      return const SizedBox(
                        width: 4,
                      );
                    },
                    itemCount: 3),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    title: "Skip",
                    color: Colors.white,
                    textAlign: TextAlign.center,
                    size: 14,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.increment();
                      print(controller.count.value);
                    },
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          title: "Next  ",
                          color: Colors.white,
                          textAlign: TextAlign.center,
                          size: 14,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ]));
  }
}
