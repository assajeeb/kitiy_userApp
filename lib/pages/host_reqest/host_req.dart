import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/Agency/agency.dart';

import '../friends/friend.dart';

class HostController extends GetxController {
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

class HostReq extends StatefulWidget {
  const HostReq({super.key});

  @override
  State<HostReq> createState() => _HostReqState();
}

class _HostReqState extends State<HostReq> {
  @override
  Widget build(BuildContext context) {
    final HostController controller = Get.put(HostController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Host Center",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            TextFormField(
              controller: controller.textEditingController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Color(0xff808080)),
                hintText: "Search user ID",
                hintStyle: TextStyle(color: Color(0xff808080)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff808080)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff808080)),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 700.h,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                        title: "",
                        content: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(Agency());
                              },
                              child: Image.asset("images/icons/right.png", width: 50.w, height: 50.w),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "User ID:111111",
                              style: TextStyle(fontSize: 20.sp, color: Colors.black, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Successfully Sending",
                              style: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xffEBECF0),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundImage: AssetImage("images/image/smp.png"),
                          ),
                          SizedBox(width: 10.sp),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User ID: 111111",
                                style: TextStyle(color: Color(0xff202020), fontSize: 16.sp, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Name: P Habib Khan",
                                style: TextStyle(color: Color(0xff0B5F84), fontSize: 14.sp, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Spacer(),
                          Image.asset("images/icons/click.png", width: 35.w, height: 35.w)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
