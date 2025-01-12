import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../util/colors.dart';
import '../group_call_screen.dart';

class GroupScreen extends StatefulWidget {
  const GroupScreen({super.key});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(

                child: Text(
                  "Search History",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete))
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          alignment: Alignment.center,
          width: 390.w,
          height: 250.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              border: Border.all(width: 8.w, color: AppColors.pinkColor)),
          child: Image.asset(
            "assets/history.png",
            height: 250.h,
            width: 390.w,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10.h,),
        Container(
          width: 390.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50.h,
                width: 154.w,

                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: 31.w,
                          height: 30.h,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 5.w),
                              child: Image.asset("assets/user11.png")));
                    }),
              ),

              Expanded(
                child: Container(
                    width: 149.w,
                    child: Row(
                      children: [
                        Image.asset("assets/icons/marker.png"),
                        Text("Chittagong, Bangladesh",
                          style: TextStyle(fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),),
                      ],
                    )
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.h,),
        Card(
          child: Container(
              alignment: Alignment.center,
              width:390.w,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left Side
                  Container(
                    width: 228.w,
                    child: Column(
                      children: [
                        Row(

                          children: [
                            Container(
                              width: 40.w,
                              height: 40.h,
                              child: Image.asset("assets/user11.png"),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              child: Text(
                                "꧁👫DOSTI💖TAK👫꧂",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "প্রেম হবে Vs বিয়ে হবে",
                                style: TextStyle(
                                    fontSize: 12.sp, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),

                      ],
                    ),
                  ),
                  // Right side
                  Container(
                    width: 83.w,
                    child: Column(
                      children: [

                        SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                          onTap: (){
                            //Get.to(GroupCallScreen());
                          },
                          child: Container(
                              width: 80.w,
                              height: 80.h,
                              decoration: BoxDecoration(
                                color: AppColors.btnColor,
                                border: Border.all(width: 0.5.w),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(
                                      child: Image.asset("assets/icons/join.png")
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    child: Text(
                                      "Join",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ),

                                ],
                              )),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
