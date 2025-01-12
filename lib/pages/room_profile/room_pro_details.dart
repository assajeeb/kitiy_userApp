import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RoomProDetails extends StatefulWidget {
  const RoomProDetails({super.key});

  @override
  State<RoomProDetails> createState() => _RoomProDetailsState();
}

class _RoomProDetailsState extends State<RoomProDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.h,),
            Container(
              height: 340.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
        
                    image: AssetImage("images/image/rcImg.png"))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 15.w,top: 5.h),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              Get.back();
        
                            },
                            icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 25.r,)),
                        Text("Adhora",style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500,color: Colors.white),),
                      Spacer(),
                        Padding(
                          padding:  EdgeInsets.only(right: 15.w),
                          child: Image.asset("images/icons/edit.png",width: 25.w,height: 25.w,),
                        )
                      ,SizedBox(width: 10.w,)
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
        
                      children: [
                        SizedBox(height: 10.sp,),
                        CircleAvatar(
                          radius: 50.r,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 47.r,
                            backgroundImage: AssetImage("images/image/smp.png"),
                          ),
                        ),
                        SizedBox(height: 10.sp,),
                        Text("Adhora", style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.w500,color: Colors.white),)
                     , Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text("ID No.4511015",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                        SizedBox(width: 5.w,),
                         Image.asset("images/icons/copy.png", width: 15.w,height: 15.w,)
        
                       ],
                     ),
                        SizedBox(height: 25.sp,),
                        Text("Bangladesh  |  Bangladesh",
                          style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                        SizedBox(height: 17.sp,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                             height: 40.h,
                             width: 245.w,
                             color: Color(0xff2B2B2B),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Row(
                                   children: [
                                     Text("298",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                                     SizedBox(width: 5.w,),
        
                                     Text("Visitors",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Color(0xff9B9BA7)),)
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Text("22",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                                     SizedBox(width: 5.w,),
        
                                     Text("Followi..",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Color(0xff9B9BA7)),)
                                   ],
                                 ),
                                 Row(
                                   children: [
                                     Text("34",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                                     SizedBox(width: 5.w,),
        
                                     Text("Frien..",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400,color: Color(0xff9B9BA7)),)
                                   ],
                                 ),
        
                               ],
                             ),
                                                    ),
                            SizedBox(width: 14.w,)
                          ],
                        )
        
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
              child: Row(
                children: [
                  Text("Badge",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                  Spacer(),
                  Text("42",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/icons/bdgg1.png",width: 55.56.w,height: 50.h,),
                Image.asset("images/icons/bdgg2.png",width: 55.56.w,height: 50.h,),
                Image.asset("images/icons/bdgg12.png",width: 55.56.w,height: 50.h,),
                Image.asset("images/icons/bdgg3.png",width: 55.56.w,height: 50.h,),
                Image.asset("images/icons/bdgg3.png",width: 55.56.w,height: 50.h,),
        
              ],
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
              child: Row(
                children: [
                  Text("Gift",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                  Spacer(),
                  Text("541651",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/icons/bdgg4.png",width: 60.06.w,height: 60.06.h,),
                Image.asset("images/icons/bdgg5.png",width: 60.06.w,height: 60.06.h,),
                Image.asset("images/icons/bdgg6.png",width: 60.06.w,height: 60.06.h,),
                Image.asset("images/icons/bdgg7.png",width: 60.06.w,height: 60.06.h,),
                Image.asset("images/icons/bdgg8.png",width: 60.06.w,height: 60.06.h,),
        
              ],
            ),
        
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
              child: Row(
                children: [
                  Text("Entry Effect",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                  Spacer(),
                  Text("8",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.w,),
                Image.asset("images/icons/bdgg9.png",width: 75.w,height: 26.h,),
                SizedBox(width: 10.w,),
                Image.asset("images/icons/bdgg10.png",width: 60.06.w,height: 60.06.h,),
                SizedBox(width: 10.w,),
                Image.asset("images/icons/bdgg9.png",width: 60.06.w,height: 60.06.h,),
        
              ],
            ),
        
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
              child: Row(
                children: [
                  Text("Frame",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                  Spacer(),
                  Text("9",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20.w,),
                Image.asset("images/icons/bdgg11.png",width: 50.w,height: 50.h,),
                SizedBox(width: 10.w,),
                Image.asset("images/icons/bdgg11.png",width: 50.w,height: 50.h,),
        
              ],
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              child: Row(
                children: [
                  Text("Intimacy",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                  Spacer(),
                  Text("3",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90.w,
                  height: 106.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Column(
                    children: [
                      Text("Couple",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                      SizedBox(height: 5.h,),
                      CircleAvatar(
                        radius: 17.5.r,
                       backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 25.h,
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        decoration: BoxDecoration(
                          color: Color(0xffD398BC),
                          borderRadius: BorderRadius.circular(25.r)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Couple",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        
                            SizedBox(width: 5.w,),
                            Container(
                            padding: EdgeInsets.all(3.r),
                            decoration: BoxDecoration(
        
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white,
        
                              )
        
                            ),
                            child: Center(child: Padding(
                              padding:  EdgeInsets.all(.9),
                              child: Text("I",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                            )),
                          )
                          ],
                        ),
        
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 106.h,
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Column(
                    children: [
                      Text("Friend",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                      SizedBox(height: 5.h,),
                      CircleAvatar(
                        radius: 17.5.r,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 25.h,
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        decoration: BoxDecoration(
                            color: Color(0xffD398BC),
                            borderRadius: BorderRadius.circular(25.r)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Friend",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        
                            SizedBox(width: 5.w,),
                            Container(
                              padding: EdgeInsets.all(3.r),
                              decoration: BoxDecoration(
        
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
        
                                  )
        
                              ),
                              child: Center(child: Padding(
                                padding:  EdgeInsets.all(.9),
                                child: Text("II",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
                              )),
                            )
                          ],
                        ),
        
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 106.h,
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Column(
                    children: [
                      Text("Friend",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
                      SizedBox(height: 5.h,),
                      CircleAvatar(
                        radius: 17.5.r,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 25.h,
                        margin: EdgeInsets.symmetric(horizontal: 3.w),
                        decoration: BoxDecoration(
                            color: Color(0xffD398BC),
                            borderRadius: BorderRadius.circular(25.r)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Couple",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),),
        
                            SizedBox(width: 5.w,),
                            Container(
                              padding: EdgeInsets.all(3.r),
                              decoration: BoxDecoration(
        
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
        
                                  )
        
                              ),
                              child: Padding(
                                padding:  EdgeInsets.all(.9),
                                child: Center(child: Text("III",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w400),)),
                              ),
                            )
                          ],
                        ),
        
                      )
                    ],
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 106.h,
                  decoration: BoxDecoration(
                      color: Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                  child: Column(
                    children: [
                      Text("Friend",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff2B2B2B)),),
        
                      SizedBox(height: 15.h,),
                      Container(
                        padding: EdgeInsets.all(3.r),
                        decoration: BoxDecoration(
        
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xff0B5F84),
        
                            )
        
                        ),
                        child: Center(child: Padding(
                          padding:  EdgeInsets.all(10.r),
                          child: Image.asset("images/icons/plus.png",width: 25.w,height: 25.w,)
                        )),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 35.h,),
        
        
        
        
          ],
        ),
      ),
    );
  }
}
