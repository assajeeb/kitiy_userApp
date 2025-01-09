import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../util/colors.dart';
import '../../widgets/custom_icon_btn.dart';
import '../group_call_screen.dart';

class SearchRoomPage extends StatefulWidget {
  const SearchRoomPage({super.key});

  @override
  State<SearchRoomPage> createState() => _SearchRoomPageState();
}

class _SearchRoomPageState extends State<SearchRoomPage> {
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


        Card(
          child: Container(
              alignment: Alignment.center,
              width:390.w,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
              child: Row(
                children: [
                  // Left Side
                  Container(
                    width: 228.w,
                    child: Column(
                      children: [
                        Row(

                          children: [

                            Container(
                              child: Text(
                                "প্꧁👫DOSTI💖TAK👫꧂",
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

                          children: [

                            Container(
                              child: Text(
                                "ID NO:",
                                style: TextStyle(

                                    fontSize: 13.sp, fontWeight: FontWeight.w400,  color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Container(
                              child: Text(
                                "MKH52421",
                                style: TextStyle(

                                    fontSize: 13.sp, fontWeight: FontWeight.w400,  color:AppColors.greyColor),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),

                        CustomIconBtn(
                          title: "Add Friend",
                          width: 140.w,
                          height:40.h,
                          textColor: Colors.white,
                          btnColor: AppColors.btnColor,
                          img: "assets/icons/join.png",
                          imgHeight: 20.0,
                          imgWidth: 20.0,

                          onTab: (){

                          },
                        ),
                        SizedBox(height: 5.h,
                        ),
                        CustomIconBtn(
                          title: "Follow",
                          width: 140.w,
                          height:40.h,
                          textColor: Colors.white,
                          btnColor: AppColors.btnColor,
                          img: "assets/icons/join.png",
                          imgHeight: 20.0,
                          imgWidth: 20.0,

                          onTab: (){

                          },
                        ),
                      ],
                    ),
                  ),
                  // Right side
                  Container(
                    width: 143.w,
                    child: Stack(
                      children: [
                 Container(
                   width: 143.w,
                   height: 143.h,

                   decoration: BoxDecoration(

                       border: Border.all(width: 2.w, color: AppColors.pinkColor),
                       borderRadius: BorderRadius.circular(10.r)
                   ),
                   child: Image.asset("assets/userjoin.png",width: 143.w,
                       height: 143.h , fit: BoxFit.fill,),

                 ),

                        Positioned(
                          right: 0,
                          top: 5.h,
                          bottom: 5.h,

                          child: InkWell(
                            onTap: (){
                              Get.to(GroupCallScreen());
                            },
                            child: Container(
                                width: 50.w,
                                height: 130.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppColors.btnColor,
                                  border: Border.all(width: 2.w, color: AppColors.pinkColor),
                                  borderRadius: BorderRadius.circular(50.r)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [



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

                                    SizedBox(height: 10.h,)
                          ,
                                     Icon(Icons.add, size:15.h, color: AppColors.whiteColor,)

                                  ],
                                )),
                          ),
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
