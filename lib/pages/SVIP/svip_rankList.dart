import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/SVIP/svip_topgs.dart';

class SvipRank extends StatefulWidget {

   SvipRank({super.key, });

  @override
  State<SvipRank> createState() => _SvipRankState();
}

class _SvipRankState extends State<SvipRank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 30.h,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Color(0xff0B5F84)),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
             // Get.to(()=>SvipRank());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              width: double.infinity,
              height: 130.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: LinearGradient(
                    colors: [
                      Color(0xffFCF1DF),
                      Color(0xffFCE6CE),
                    ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight, )
              ),
              child: Row(
                children: [
                  SizedBox(
                    child: Image.asset("images/image/sr.png"),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          itemsList("a1","blackD",),
                          itemsList("a2","blackD",),
                          itemsList("a3","blackD",),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(()=>SvipTopgs());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              width: double.infinity,
              height: 130.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffE7F5FE),
                      Color(0xffD2EFFF),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight, )
              ),
              child: Row(
                children: [
                  SizedBox(
                    child: Image.asset("images/image/tgs.png"),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          itemsList1("a1","dd",),
                          itemsList1("a2","dd",),
                          itemsList1("a3","dd",),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(()=>SvipTopgs());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              width: double.infinity,
              height: 130.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffF5E5FF),
                      Color(0xffE8D1FF),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight, )
              ),
              child: Row(
                children: [
                  SizedBox(
                    child: Image.asset("images/image/tgr.png"),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          itemsList1("a1","dd",),
                          itemsList1("a2","dd",),
                          itemsList1("a3","dd",),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Get.to(()=>SvipTopgs());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
              width: double.infinity,
              height: 130.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFCF1DF),
                      Color(0xffFCE6CE),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight, )
              ),
              child: Row(
                children: [
                  SizedBox(
                    child: Image.asset("images/image/pr.png"),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          itemsList1("a1","dd",),
                          itemsList1("a2","dd",),
                          itemsList1("a3","dd",),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
  Widget itemsList(String image, image2, ){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
      child: Row(
        children: [
          Image.asset("images/icons/$image.png",width:  20.w,height: 20.w,),
          SizedBox(width: 5.w,),
          Row(
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundImage: AssetImage("images/image/smp.png"),
              ),
              SizedBox(width: 10.w,),
              Text("ƊЄƑƛƲƬЄƦ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.black),)
            ],
          ),

          Spacer(),

          Row(
            children: [

              Image.asset("images/icons/$image2.png",width: 12.w,height: 12.w,),
              SizedBox(width: 5.w,),
              Text("2151000",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xff000000)),)

            ],
          ),
        ],
      ),
    );
  }
  Widget itemsList1(String image, image2, ){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
      child: Row(
        children: [
          Image.asset("images/icons/$image.png",width:  20.w,height: 20.w,),
          SizedBox(width: 5.w,),
          Row(
            children: [
              CircleAvatar(
                radius: 15.r,
                backgroundImage: AssetImage("images/image/smp.png"),
              ),
              SizedBox(width: 10.w,),
              Text("ƊЄƑƛƲƬЄƦ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Colors.black),)
            ],
          ),

          Spacer(),

          Row(
            children: [

              Image.asset("images/icons/$image2.png",width: 18.w,height: 18.w,),
              SizedBox(width: 5.w,),
              Text("2151000",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xff000000)),)

            ],
          ),
        ],
      ),
    );
  }
}
