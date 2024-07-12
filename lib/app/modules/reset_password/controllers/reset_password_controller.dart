import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final count = 0.obs;
  RxBool passwordVisibility = false.obs;

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

  void increment() => count.value++;

  void toggleVisibility() =>
      passwordVisibility.value = !passwordVisibility.value;
}
