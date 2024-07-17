import 'package:get/get.dart';

class HomeController extends GetxController {

  final count = 0.obs;

  RxInt selectedIndex = 0.obs;

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

  void setIndex(int val) => selectedIndex.value = val;

  Map<String, String> products = {
    "burger": "assets/images/burger.png",
    "taco": "assets/images/taco.png",
    "drink": "assets/images/drink.png",
    "pizza": "assets/images/pizza.png",
  };
}
