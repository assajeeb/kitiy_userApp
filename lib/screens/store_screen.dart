import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitti/screens/group_management_screen.dart';
import 'package:kitti/widgets/custom_button_one.dart';
import 'package:kitti/widgets/custom_icon_btn.dart';

import '../widgets/circular_image.dart';
import '../widgets/custom_text.dart';
import '../widgets/large_icon_btn.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconBtn(
                  onTab: () {},
                  title: "Dhaka",
                  btnColor: Color(0xffF9FAF2),
                  height: 28.h,
                  width: 76.w,
                  radius: 5.r,
                  imgHeight: 15.h,
                  imgWidth: 15.w,
                  img: "assets/icons/marker2.png",
                  imgColor: Colors.green,
                ),
                CustomButtonOne(
                  onTab: () {},
                  title: "Voiceroom",
                  fontSize: 14.sp,
                  width: 85.w,
                  height: 28.h,
                  radius: 5.r,
                  textColor: Colors.black,
                  color: Color(0xffE4E5E7),
                  fontWeight: FontWeight.w400,
                ),
                CustomButtonOne(
                  onTab: () {},
                  title: "English",
                  fontSize: 14.sp,
                  radius: 5.r,
                  width: 85.w,
                  height: 28.h,
                  textColor: Colors.black,
                  color: Color(0xffE4E5E7),
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 200.h,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 300.w,
                      height: 30.h,
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/user_icon.png",
                            width: 15.w,
                            height: 15.h,
                            fit: BoxFit.fill,
                            color: Color(0xffF9A305),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CircularImage(
                            size: 30.h,
                            img: "assets/u3.png",
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "Group Owner",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0xff020202),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomIconBtn(
                onTab: () {},
                title: "Add Member",
                width: 151.w,
                textColor: Colors.black,
                imgColor: Colors.black,
                img: "assets/icons/plus.png",
                imgWidth: 20.w,
                imgHeight: 20.h,
              ),
            ),
            LargeIconBtn(
              onPressed: () {


              },
              title: "Group Management",
            ),
            SizedBox(
              height: 5.h,
            ),


               LargeIconBtn(
                 onPressed: () {

                   Get.to(GroupManagementScreen());

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
