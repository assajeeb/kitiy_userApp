import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'noticeController.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  final Noticecontroller noticecontroller = Get.put(Noticecontroller());

  @override
  void initState() {
    super.initState();
    if (noticecontroller.switchControllers.isEmpty) {
      noticecontroller.initializeSwitches();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -10.sp,
        title: Text(
          "Notification",
          style: TextStyle(
            color: const Color(0xff2B2B2B),
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Divider(color: Color(0xff808080).withOpacity(.3)),
            Expanded(
              child: ListView.builder(
                itemCount: noticecontroller.notiList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Obx(() => SizedBox(
                        child: Row(
                          children: [
                            Image.asset(
                              noticecontroller.notiList[index]["image"],
                              width: 18.w,
                              height: 18.w,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              noticecontroller.notiList[index]["text"],
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Color(0xff2B2B2B),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Switch(
                              value: noticecontroller.switchControllers[index].value,
                              activeColor: Colors.white,
                              inactiveThumbColor: Colors.white,
                              inactiveTrackColor: Color(0xffC9C9C9),
                              trackOutlineColor:
                              WidgetStatePropertyAll(
                                Colors.transparent,
                              ),
                              activeTrackColor: Color(0xff0B5F84),
                              onChanged: (bool value) {
                                noticecontroller.updateSwitch(
                                    index, value);
                              },
                            )
                          ],
                        ),
                      )),
                      Divider(color: Color(0xff808080).withOpacity(.3)),
                    ],
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