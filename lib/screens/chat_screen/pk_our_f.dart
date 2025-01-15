
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/util/colors.dart';

import '../../widgets/custom_text.dart';

class PkMode{
  static void pkOurF(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 472.h,
          width: 390.w,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 195.w,
                    height: 54.h,
                    decoration: BoxDecoration(color: Color(0xff730EC8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            // Get.to(JoinGroupTools());
                          },
                          child: Container(
                            width: 128.w,
                            height: 41.h,
                            padding: EdgeInsets.symmetric(horizontal: 7.w),
                            decoration: BoxDecoration(
                                color: Color(0xff3D4456),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Container(
                              width: 128.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 25.w,
                                    height: 25.h,
                                    child: Image.asset("assets/user11.png"),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "꧁DOSTI💖TAK꧂",
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "ID: 1215411",
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              color: Color(0xff9198AA)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 4.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: CustomText(
                              title: "Our",
                              textColor: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 195.w,
                    height: 54.h,
                    decoration: BoxDecoration(color: Color(0xff730EC8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            // Get.to(JoinGroupTools());
                          },
                          child: Container(
                            width: 128.w,
                            height: 41.h,
                            padding: EdgeInsets.symmetric(horizontal: 7.w),
                            decoration: BoxDecoration(
                                color: Color(0xff3D4456),
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Container(
                              width: 128.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 25.w,
                                    height: 25.h,
                                    child: Image.asset("assets/user11.png"),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "꧁DOSTI💖TAK꧂",
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "ID: 1215411",
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              color: Color(0xff9198AA)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 4.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: CustomText(
                              title: "F",
                              textColor: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 200.h,
                    width: 195.w,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xff8C169A),
                          Color(0xffCA282A),
                        ])),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemCount: 16,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                  width: 25.w,
                                  height: 25.h,
                                  decoration:
                                  BoxDecoration(shape: BoxShape.circle),
                                  child: Image.asset(
                                    "assets/chatroom/pk.png",
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.h,
                                    child: Image.asset(
                                      "assets/chatroom/fire.png",
                                      color: Color(0xffD7BFBF),
                                    ),
                                  ),
                                  CustomText(
                                    title: "2.0",
                                    fontSize: 12.sp,
                                    textColor: Color(0xffD7BFBF),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: 200.h,
                    width: 195.w,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xff730EC8),
                          Color(0xffCA282A),
                        ])),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemCount: 16,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                  width: 25.w,
                                  height: 25.h,
                                  decoration:
                                  BoxDecoration(shape: BoxShape.circle),
                                  child: Image.asset(
                                    "assets/chatroom/pk.png",
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 10.w,
                                    height: 10.h,
                                    child: Image.asset(
                                      "assets/chatroom/fire.png",
                                      color: Color(0xffD7BFBF),
                                    ),
                                  ),
                                  CustomText(
                                    title: "2.0",
                                    fontSize: 12.sp,
                                    textColor: Color(0xffD7BFBF),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 240.w,
                        height: 19.h,
                        decoration: BoxDecoration(
                            color: Color(0xff0A86FF),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.r),
                                topLeft: Radius.circular(10.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 10.w),
                              width: 10.w,
                              height: 10.h,
                              child: Image.asset(
                                "assets/chatroom/fire.png",
                                color: Color(0xffD7BFBF),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            CustomText(
                              title: "2.0",
                              fontSize: 12.sp,
                              textColor: Color(0xffD7BFBF),
                            )
                          ],
                        )),

                    Container(
                        width: 136.w,
                        height: 19.h,
                        decoration: BoxDecoration(
                            color: Color(0xffFB4A89),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10.r),
                                topRight: Radius.circular(10.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [


                            CustomText(
                              title: "2.0",
                              fontSize: 12.sp,
                              textColor: Color(0xffD7BFBF),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10.w),
                              width: 10.w,
                              height: 10.h,
                              child: Image.asset(
                                "assets/chatroom/fire1.png",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void pkOurFSingleItemDialog(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: 390.w,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              // begin: Alignment.topLeft,
              // end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20), // Rounded corners
            border: Border.all(
              color: Colors.black, // Border color
              width: 3, // Border width
            ),
          ),
          child: Column(
            children: [

            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child:   Container(
                    width: 30.w,
                    height: 30.h,
                    padding: EdgeInsets.all(5.r),
                    decoration: BoxDecoration(
                        color: Color(0xff520209),

                        shape: BoxShape.circle),
                    child:Image.asset("assets/chatroom/cross.png",
                      color: Colors.white,
                      fit: BoxFit.fill,
                    )),
              ),
            ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 90.h,
                      width: 90.w,
                      child: Image.asset("assets/chatroom/u26.png")),
                  Container(
                    height: 90.h,
                    width: 90.w,
                    child: Column(
                      children: [
                        Container(
                            height: 30.h,
                            width: 54.w,
                            child: Image.asset("assets/chatroom/P.png")),

                        SizedBox(height: 5.h,),
                        Container(
                          padding: EdgeInsets.only(left: 5.w),
                            height: 30.h,
                            width: 54.w,
                            child: Image.asset("assets/chatroom/K.png")),
                      ],
                    ),
                  ),

                  Container(
                      height: 90.h,
                      width: 90.w,
                      child: Image.asset("assets/chatroom/u27.png"))
                ],
              ),
              SizedBox(height: 10.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [



              Row(
                children: [
                  Container(
                    child:    Row(
                      children: [
                        Container(
                          child: Text(
                            "꧁DOSTI💖TAK꧂",
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 10.h,),
                        Container(

                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: CustomText(
                            title: "Our",
                            textColor: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 30.h,),
                  Container(
                    child:    Row(
                      children: [
                        Container(

                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: CustomText(
                            title: "M",
                            textColor: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(width: 10.h,),
                        Container(
                          child: Text(
                            "꧁DOSTI💖TAK꧂",
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: Colors.white),
                          ),
                        ),



                      ],
                    ),
                  )
                ],
              )
                ],
              ),


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(

                  children: [
                    Container(
                      height: 39.h,
                      width: 390.w,
                      padding:  EdgeInsets.only(left: 10.w),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color(0xff81394D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r)
                        )

                      ),
                      child: CustomText(title: "PK reward x3",
                      textColor: AppColors.goldColor,
                        fontSize: 18.sp,
                      ),
                    ),
                   Container(
                     height: 200.h,
                     child: ListView.builder(
                         itemCount: 2,
                         itemBuilder: (context,index){
                       return  Row(
                         children: [
                           Stack(
                             children: [
                               CircleAvatar(
                                 radius:35.r,
                                 child: Image.asset("assets/chatroom/u28.png"),
                               ),
                               Positioned(
                                 right: 0.w,
                                 bottom: 5.h,
                                 child:  Container(
                                     width: 20.w,
                                     height: 20.h,
                                     decoration: BoxDecoration(
                                         color: Colors.red,
                                         shape: BoxShape.circle),
                                     child: Center(
                                       child: CustomText(title: "1",
                                         textColor: Colors.white,
                                         fontSize: 14.sp,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     )),
                               ),
                             ],
                           ),
                           SizedBox(width: 10.w,),
                           Container(
                             width: 20.w,
                             height: 20.h,
                             child: Image.asset(
                               "assets/chatroom/fire.png",
                               color: Color(0xffD7BFBF),
                             ),
                           ),
                           SizedBox(width: 5.w,),
                           CustomText(
                             title: "2.0",
                             fontSize: 16.sp,
                             fontWeight: FontWeight.w500,
                             textColor: Color(0xffD7BFBF),
                           )

                         ],
                       );
                     }),
                   )


                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
