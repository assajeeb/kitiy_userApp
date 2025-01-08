import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../util/colors.dart';
import '../widgets/circular_image.dart';
import '../widgets/custom_icon_btn.dart';
import '../widgets/custom_text.dart';
import '../widgets/large_icon_btn.dart';

class GroupSpeakManagement extends StatefulWidget {
  const GroupSpeakManagement({super.key});

  @override
  State<GroupSpeakManagement> createState() => _GroupSpeakManagementState();
}

class _GroupSpeakManagementState extends State<GroupSpeakManagement> {
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
              height: 15.h,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 42.h,
                        alignment: Alignment.center,
                        child: Text(
                          "Allow only admins to speak",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: AppColors.blueColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ), Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(

                        alignment: Alignment.center,
                        child: Text(
                          "Muted Members List",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(

                        alignment: Alignment.center,
                        child: Text(
                          "All members",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 370.w,
                    height: 20.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffF5F7F6),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 42.h,
                        alignment: Alignment.center,
                        child: Text(
                          "Only Allow to Send Voice",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Switch(
                        value: false,
                        onChanged: (value) {},

                        activeColor: AppColors.blueColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    child: Text(
                      "Disable Message Type",
                      style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            LargeIconBtn(
              onPressed: () {


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
