import 'package:get/get.dart';

class InboxsettingController extends GetxController {
  RxBool switchController = false.obs;

  void toggleSwitch(bool value) {
    switchController.value = value;
  }
}
class InboxsettingController1 extends GetxController {
  RxBool switchController1 = false.obs;

  void toggleSwitch(bool value) {
    switchController1.value = value;
  }
}
