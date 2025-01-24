import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SvipTab extends StatefulWidget {
  const SvipTab({super.key});

  @override
  State<SvipTab> createState() => _SvipTabState();
}

class _SvipTabState extends State<SvipTab> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          SizedBox(height: 15.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("EXP 10000-2000  | ",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.black),),
              Image.asset("images/icons/svip.png",width: 20.w,height: 20.w,),
              Text(" 200",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Colors.black),),
            ],
          ),
          SizedBox(height: 5.h,),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff1C1C1C),
                borderRadius: BorderRadius.circular(25.r)
            ),
            margin:EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
            height: 188.h,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 15.h,),


                  Container(
                    height: 34.h,
                    width: 163.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.r)
                    ),
                    child: Center(child: Text("Warrior Package",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color: Colors.black),)),
                  ),

                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/icons/1.png",width: 88.w,height: 88.w,),
                    Image.asset("images/icons/2.png",width: 88.w,height: 88.w,),
                    Image.asset("images/icons/3.png",width: 88.w,height: 88.w,),
                  ],
                ),
                SizedBox(height: 8.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total value  ",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                    CircleAvatar(
                      radius: 8.6.r,
                      backgroundColor: Colors.white,
                      child: Center(child: Image.asset("images/icons/blackD.png",width: 14.w,height: 14.w,)),
                    ),
                    Text("  0/10000  |  Limited time",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                  ],
                ),
                
              ],
            ),
            

          ),
          SizedBox(height: 5.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              stickersAll(),
              stickersAll(),
              stickersAll(),
              stickersAll(),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              SizedBox(width: 30.h,),
              Column(
                children: [

                  Image.asset(
                    'images/image/bdgeBB.png',
                    height: 63.h,width: 60.w,
                  ),
                  SizedBox(height: 8.h,),
                  Text("Namepl\nate",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)
                ],
              ),
              SizedBox(width: 30.h,),
              Column(
                children: [
                  Image.asset(
                    'images/image/bdgeBB.png',
                    height: 63.h,width: 60.w,
                  ),
                  SizedBox(height: 8.h,),
                  Text("Stylish\nName",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)
                ],
              )
            ],
          )


        ],

    );
  }

  Widget stickersAll(){
    return Column(
      children: [
        Image.asset(
          'images/image/bdgeBB.png',
          height: 63.h,width: 60.w,
        ),
        SizedBox(height: 8.h,),
        Text("Avatar\nframe",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),)
      ],
    );
  }


}
