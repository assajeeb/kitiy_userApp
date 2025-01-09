import 'package:get/get.dart';

class Noticecontroller extends GetxController {
  var switchControllers = <RxBool>[].obs;

  List<Map<String, dynamic>> notiList = [
    {
      "image": "images/icons/call.png",
      "text": "Call",
    },
    {
      "image": "images/icons/msg.png",
      "text": "Message",
    },
    {
      "image": "images/icons/vc.png",
      "text": "VoiceClub",
    },
    {
      "image": "images/icons/mic.png",
      "text": "In-app Sound",
    }
  ].obs;

  void initializeSwitches() {
    switchControllers.assignAll(
        List.generate(notiList.length, (index) => RxBool(false)));
  }

  void updateSwitch(int index, bool value) {
    switchControllers[index].value = value;
  }
}
