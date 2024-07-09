import 'package:get/get.dart';

class SplashController extends GetxController {
  final count = 1.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    if (count.value < 3) {
      count.value++;
    }else{
      Get.offAndToNamed("/login");
    }
  }
}
