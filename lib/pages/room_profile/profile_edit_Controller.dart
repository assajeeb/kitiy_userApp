import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileEditController extends GetxController{


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
class ProfileEditController1 extends GetxController{


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
class ProfileEditController2 extends GetxController{


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