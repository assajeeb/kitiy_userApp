import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitti/screens/groupUserScreenParts/group_screen.dart';
import 'package:kitti/screens/groupUserScreenParts/user_screen.dart';

import 'package:kitti/screens/public_group.dart';
import 'package:kitti/util/colors.dart';


import 'create_group.dart';
import 'group_call_screen.dart';

class GroupUser extends StatefulWidget {
  GroupUser({super.key});

  @override
  State<GroupUser> createState() => _GroupUserState();
}

class _GroupUserState extends State<GroupUser> {
  var groupValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(onPressed:(){
          Get.back();
        }, icon: Icon(Icons.arrow_back, size: 30.h,)),
        title: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Enter your group ID/User ID",
              border: OutlineInputBorder()
          ),
        ),

        actions: [
          IconButton(onPressed:(){

          }, icon: Icon(Icons.close,
          size: 30.h,)),
        ],
      ),
      body: Container(
        color: AppColors.whiteColor,

        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index=0;
                      });
                    },
                    child: Container(
                      child: Text("Group",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color:  index==0? Colors.black: AppColors.greyColor)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                  setState(() {
                    index=1;
                  });
                    },
                    child: Container(
                      child: Text(
                        "User",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: index==1? Colors.black: AppColors.greyColor),
                      ),
                    ),
                  )
                ],
              ),

             Container(
               width: double.infinity,
               color: Colors.grey,
               height: 5.h,
             ),
              groupUserList[index]
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PopupMenuButton<int>(
              position: PopupMenuPosition.over,
              child: Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Icon(Icons.add, size: 25.h, color: Colors.black),
              ),
              itemBuilder: (context) => [
                // Popup menu item 1
                PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.star),
                      SizedBox(width: 10),
                      Text("Create Group"),
                    ],
                  ),
                ),
                // Popup menu item 2
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.chrome_reader_mode),
                      SizedBox(width: 10),
                      Text("About"),
                    ],
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Get.to(CreateGroup());
                } else if (value == 2) {
                  print("About selected");
                }
              },
              offset: Offset(0, 100),

              elevation: 2,
            ),
            Icon(Icons.search, size: 30.h, color: Colors.black),
          ],
        ),
      ),
    );
  }

  int index = 0;

  List<Widget> groupUserList = [GroupScreen(), UserScreen()];
}

class CustomButtonWidget extends StatelessWidget {
  final title;
  final width;
  final img;
  VoidCallback onTab;
  CustomButtonWidget({
    this.title,
    this.width,
    this.img,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: width ?? 100.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(width: 0.5, color: Colors.black12),
          borderRadius: BorderRadius.circular(15.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("$img"),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "$title",
              style: TextStyle(fontSize: 12.sp, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
