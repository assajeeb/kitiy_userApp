import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Helpingcontroller extends GetxController{

  late  TextEditingController textEditingController;

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


class Helpingcontroller1 extends GetxController{

  late  TextEditingController textEditingController;

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