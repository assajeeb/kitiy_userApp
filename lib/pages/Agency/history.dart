import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "History",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Only keep history in the least 2 months",style: TextStyle(fontSize: 14.sp,color: Color(0xff808080),fontWeight: FontWeight.w400),),
            SizedBox(height: 20.h,),
            Container(

              decoration: BoxDecoration(
                color: Color(0xffEBECF0),
                borderRadius: BorderRadius.circular(15.r),
              ),

              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage("images/image/smp.png"),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tamanna',style: TextStyle(color: Color(0xff202020),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5.h,),
                        Text('User ID:1234564',style: TextStyle(color: Color(0xff808080),fontSize: 14.sp,fontWeight: FontWeight.w400)),
                        SizedBox(height: 5.h,),
                        Text('017***********',style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400)),


                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("images/icons/coin.png",width: 20.w,height: 20.w,),
                            SizedBox(width: 3.w,),
                            Text('1000',style: TextStyle(color: Color(0xff202020),fontSize: 15.sp,fontWeight: FontWeight.w400)),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Text('20/02/2024',style: TextStyle(color: Color(0xff808080),fontSize: 12.sp,fontWeight: FontWeight.w400)),

                      ],
                    )
                  ],
                ),
              ),


            ),
            SizedBox(height: 10.h,),
            Container(

              decoration: BoxDecoration(
                color: Color(0xffEBECF0),
                borderRadius: BorderRadius.circular(15.r),
              ),

              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage("images/image/smp.png"),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Agent User ID: 111111',style: TextStyle(color: Color(0xff202020),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5.h,),
                        Text('Name: P Habib Khan',style: TextStyle(color: Color(0xff0B5F84),fontSize: 14.sp,fontWeight: FontWeight.w400)),
                        SizedBox(height: 5.h,),
                        Text('20/02/2024',style: TextStyle(color: Color(0xff808080),fontSize: 15.sp,fontWeight: FontWeight.w400)),


                      ],
                    ),
                    Spacer(),
                    Text('Accept',style: TextStyle(color: Color(0xff0B5F84),fontSize: 14.sp,fontWeight: FontWeight.w500)),

                  ],
                ),
              ),


            ),
            SizedBox(height: 10.h,),
            Container(

              decoration: BoxDecoration(
                color: Color(0xffEBECF0),
                borderRadius: BorderRadius.circular(15.r),
              ),

              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage("images/image/smp.png"),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tamanna',style: TextStyle(color: Color(0xff202020),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5.h,),
                        Text('User ID:1234564',style: TextStyle(color: Color(0xff808080),fontSize: 14.sp,fontWeight: FontWeight.w400)),
                        SizedBox(height: 5.h,),
                        Text('017***********',style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400)),


                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("images/icons/coin.png",width: 20.w,height: 20.w,),
                            SizedBox(width: 3.w,),
                            Text('1000',style: TextStyle(color: Color(0xff202020),fontSize: 15.sp,fontWeight: FontWeight.w400)),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Text('20/02/2024',style: TextStyle(color: Color(0xff808080),fontSize: 12.sp,fontWeight: FontWeight.w400)),

                      ],
                    )
                  ],
                ),
              ),


            ),
            SizedBox(height: 10.h,),
            Container(

              decoration: BoxDecoration(
                color: Color(0xffEBECF0),
                borderRadius: BorderRadius.circular(15.r),
              ),

              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 12.h),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage("images/image/smp.png"),
                    ),
                    SizedBox(width: 15.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Agent User ID: 111111',style: TextStyle(color: Color(0xff202020),fontSize: 16.sp,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5.h,),
                        Text('Name: P Habib Khan',style: TextStyle(color: Color(0xff0B5F84),fontSize: 14.sp,fontWeight: FontWeight.w400)),
                        SizedBox(height: 5.h,),
                        Text('20/02/2024',style: TextStyle(color: Color(0xff808080),fontSize: 15.sp,fontWeight: FontWeight.w400)),


                      ],
                    ),
                    Spacer(),
                    Text('Denied',style: TextStyle(color: Color(0xff0B5F84),fontSize: 14.sp,fontWeight: FontWeight.w500)),

                  ],
                ),
              ),


            ),



          ],
        ),
      ),

    );
  }
}
