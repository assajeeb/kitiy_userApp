import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitti/widgets/custom_button_one.dart';
import 'package:kitti/widgets/custom_icon_btn.dart';

import '../util/colors.dart';
import '../widgets/circular_image.dart';
import '../widgets/custom_text.dart';
import '../widgets/large_icon_btn.dart';
import 'group_speak_management.dart';

class GroupManagementScreen extends StatefulWidget {
  const GroupManagementScreen({super.key});

  @override
  State<GroupManagementScreen> createState() => _GroupManagementScreenState();
}

class _GroupManagementScreenState extends State<GroupManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconBtn(
                  onTab: () {},
                  title: "Store",
                  btnColor: Color(0xffE8E7E7),
                  img: "assets/icons/store.png",
                  imgHeight: 15.h,
                  imgWidth: 15.w,
                  imgColor: Colors.black,
                ),
                Image.asset("assets/award.png")
              ],
            ),
            Center(
              child: CircularImage(
                size: 100.h,
                img: "assets/girl.png",
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              child: Text(
                "D̤̈ï̤l̤̈ ẅ̤ä̤l̤̈ë̤ 🥰",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              child: Text(
                "Room",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 177.w,
              height: 30.h,
              decoration: BoxDecoration(
                  color: Color(0xffE8E7E7),
                  borderRadius: BorderRadius.circular(20.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "VoieClub ID: 90400",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xffD7A533),
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap: () {}, child: Image.asset("assets/icons/copy.png"))
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: 390.w,
              height: 275.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: AppColors.btnColor, width: 1.w)),
              child: ListView(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        "Group Management",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 217.w,
                        height: 42.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: Color(0xffE4E5E7)),
                        child: Text(
                          "Speak Management",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/icons/3dot.png",
                            width: 15.w,
                            height: 15.h,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    child: Text(
                      "Transfer Group",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            LargeIconBtn(
              onPressed: () {

                Get.to(GroupSpeakManagement());

              },
              title: "Group Nickname",

            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              title: "Disband Group",
              fontWeight: FontWeight.w400,
              fontSize: 20.sp,
              textColor: Color(0xffEA2831),
            ),
          ],
        ),
      ),
    ));
  }
}
