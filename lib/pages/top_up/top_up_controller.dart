
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// list controller

class TopUpController extends GetxController{

  //json data

  final List<Map<String, dynamic>> user = [
    {
      "id": "ID 245154",
      "name": "Md Habib Khan",
      "avatar": "images/image/smp.png",
      "icon": "images/icons/aemo.png"

    },
    {
      "id": "ID 245154",
      "name": "Md Habib Khan",
      "avatar": "images/image/smp.png",
      "icon": "images/icons/aemo.png"

    },
  ].obs;



 }


 // textfromfield Controller

 class ToptextEcontroller extends GetxController{

  late  TextEditingController textEditingController;
  RxString selectedDiamond = 'Black Diamond'.obs;

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