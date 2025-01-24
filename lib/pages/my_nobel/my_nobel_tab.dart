import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyNobelTab extends StatefulWidget {
  const MyNobelTab({super.key});

  @override
  State<MyNobelTab> createState() => _MyNobelTabState();
}

class _MyNobelTabState extends State<MyNobelTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF1F1F1),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Image.asset(
              'images/icons/text.png',
              height: 28.h,width: 279.w,
            ),
            SizedBox(height: 10.h,),
            Text("EXP 10000-2000",style: TextStyle(color: Color(0xff202020),fontSize: 16.sp,fontWeight: FontWeight.w400),),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                itenS(),
                itenS(),
                itenS(),
                itenS(),
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 25.h,),
                itenS(),
                SizedBox(width: 25.h,),
                itenS(),

              ],
            )

          ],
        ),
      ),
    );
  }
  Widget itenS(){
    return GestureDetector(
      onTap: (){
        Get.defaultDialog(
          backgroundColor: Color(0xff202020),
          titleStyle: TextStyle(fontSize: 1.sp,color: Colors.transparent),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children:[


                    Container(
                      alignment: Alignment.center,
                      width: 220.w,
                      height: 124.h,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5.r)
                      ),
                    ),


                    Positioned(
                      top: 20,
                      left: 20,
                      right: 20,
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: 150.w,
                        height: 94.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(top: 20.h),
                          child: Text("Habib",style: TextStyle(
                            fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)
                          ),),
                        ),
                      ),
                    ),
                    Positioned(
                      top:0,

                      child: CircleAvatar(
                        radius: 22.r,
                        backgroundImage: AssetImage('images/image/smp.png',),
                      ),
                    ),
                    Positioned(
                      top: 65,
                      left: 5,
                      right: 5,

                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 200.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Center(child: Image.asset("images/icons/n1.png",width: 95.18.w,height: 24.2.w,))
                        ,
                      ),
                    ),
                  ]
              ),

              Text("Nobel Namplate",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Colors.white),)
              ,SizedBox(height: 8.h,),
              Text("Nameplate can be displayed\non profile and in room",textAlign: TextAlign.center,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xffCBACAC)),)


            ],
          )
        );
      },
      child: Column(
        children: [
          Image.asset(
            'images/image/bdgeBB.png',
            height: 60.h,width: 66.67.w,
          ),
          SizedBox(height: 5.h,),
          Text("Avatar\nframe",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)
        ],
      ),
    );
  }
}
