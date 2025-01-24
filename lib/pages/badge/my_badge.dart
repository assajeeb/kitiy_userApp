import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyBadge extends StatefulWidget {
  const MyBadge({super.key});

  @override
  State<MyBadge> createState() => _MyBadgeState();
}

class _MyBadgeState extends State<MyBadge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 198.h,
            color: Color(0xff0B5F84),
            child: SizedBox(
              height: 50.h,
              child: Column(
                children: [
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      SizedBox(width: 125.w,),
                      Center(

                        child: Text(
                          "My Badge",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                SizedBox(height: 10.h,),
                  Image.asset(
                    'images/image/bdgeB.png',
                    height: 90.h,width: 100.w,
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            height: 56.h,
            color: Colors.white,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal:15.w,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    color: Colors.white,
                    child: Text("My Badge",style: TextStyle(
                      color: Color(0xff0B5F84),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),),

                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.h,horizontal: 15.w) ,
                    width: 50.w,
                    height: 2.h,
                    color:Color(0xff0B5F84),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h,),

          Container(
            color: Colors.white,
            height: 260.h,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Text("Rocket",style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),

                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),

                  ],
                ),
              ],
            ),


          ),
          SizedBox(height: 10.h,),

          Container(

            height: 260.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.r),
                bottomLeft: Radius.circular(25.r),
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [


                Text("Rocket",style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),

                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),
                    stickersAll(),

                  ],
                ),
              ],
            ),


          ),
        ],
      ),

    );
  }
  Widget stickersAll(){
    return Column(
      children: [
        Image.asset(
          'images/image/bdgeB.png',
          height: 63.h,width: 70.w,
        ),
        SizedBox(height: 8.h,),
        Text("Rocket",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)
      ],
    );
  }
}
