import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConvertController extends GetxController{

  late TextEditingController textEditingController;

    @override
    void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
    }

    @override
    void onClose() {
    textEditingController.dispose();
    super.onClose();
    }

}
class ConvertController1 extends GetxController{

  late TextEditingController textEditingController;

  @override
  void onInit() {
    super.onInit();
    textEditingController = TextEditingController();
  }

  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }

}

