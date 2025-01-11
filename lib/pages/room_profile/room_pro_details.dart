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
      body: Column(
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
          )
        ],
      ),
    );
  }
}
