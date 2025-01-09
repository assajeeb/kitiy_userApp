import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InboxController extends GetxController{

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