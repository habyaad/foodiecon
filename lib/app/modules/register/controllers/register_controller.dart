import 'package:get/get.dart';

class RegisterController extends GetxController {

  final count = 0.obs;
  RxBool passwordVisibility = false.obs;
  List<String> socialMediaPath = [
    'assets/svgs/google-icon.svg',
    'assets/svgs/facebook-icon.svg',
    'assets/svgs/apple-icon.svg'
  ];
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

  void toggleVisibility() =>
      passwordVisibility.value = !passwordVisibility.value;
}
