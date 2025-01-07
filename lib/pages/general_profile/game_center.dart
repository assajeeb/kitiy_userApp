import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class GameCenter extends StatefulWidget {
  const GameCenter({super.key});

  @override
  State<GameCenter> createState() => _GameCenterState();
}

class _GameCenterState extends State<GameCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -10.sp,
        title: Text(
          "Game Center",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Container(
        height: 474.h,
        margin:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Color(0xffF1F1F1)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              child: Text("Popular", style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff0B5F84)),),
            ),
            SizedBox(height: 5.h,),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               gameItem(),
               gameItem(),
               gameItem(),
             ],
           ),
            SizedBox(height: 25.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                gameItem(),
                gameItem(),
                gameItem(),
              ],
            ),

          ],
        ),
      ),

    );
  }
  Widget gameItem(){
    return  Column(
      children: [
        Container(
          height: 90.h,
          width: 105.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r)
          ),

        ),
        SizedBox(height: 10.h,),
        Text("Delicious",style: TextStyle(fontSize: 16.sp,color: Color(0xff2B2B2B), fontWeight: FontWeight.w400),),
        SizedBox(height: 10.h,),
        ElevatedButton(
          onPressed: (){},
          child: Text("Play",style: TextStyle(color:Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color(0xff0B5F84) ),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  side: BorderSide(
                      color: Color(0xff0B5F84)
                  ),
                  borderRadius: BorderRadius.circular(25.r)
              ))

          ),
        ),

      ],
    );
  }
}
