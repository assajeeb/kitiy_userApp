import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'mynobel_rankController.dart';

class NobelRank extends StatefulWidget {
  const NobelRank({super.key});

  @override
  State<NobelRank> createState() => _NobelRankState();

}

class _NobelRankState extends State<NobelRank> {

  final MynobelRankcontroller mynobelRankcontroller=Get.put(MynobelRankcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children:[

              Container(
              height: 286.99.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/image/bgB.png"),fit: BoxFit.cover)
              ),
              child: Center(
                child: Image.asset("images/image/nr.png",width: 133.w,height: 115.h,),
              ),
            ),

              Positioned(
                top: 15,
                left: 10,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),

              Positioned(
                 right: 5,
                  left: 5,
                bottom: 15,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 3.h),
                  width: 390.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFCB05A).withOpacity(.7),
                    borderRadius: BorderRadius.circular(5.r)),
                  child: Row(
                    children: [
                      SizedBox(width: 10.w,),
                      Padding(
                        padding:  EdgeInsets.all(5.r),
                        child: Image.asset("images/icons/flag.png",width: 25.w,height: 25.h,),
                      ),
                      Stack(
                        children:[
                          SizedBox(
                            width: 65.w,
                            height: 50.w,
                            child: CircleAvatar(
                            radius: 22.5.r,
                                                     backgroundColor: Color(0xffFCB05A),
                            child: CircleAvatar(
                                radius: 20.5.r,
                                backgroundImage: AssetImage("images/image/smp.png")

                                                    ),),
                          ),
                          Positioned(
                            bottom: 0,
                              right: 0,
                              child: Image.asset("images/icons/topB.png",width: 25.w,height: 33.33.h,))

                        ]
                      ),
                      SizedBox(width: 8.w,),

                      Text("Md Habib Khan",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff1F0700)),),
                      Spacer(),

                      Padding(
                        padding:  EdgeInsets.only(right: 10.w),
                        child: Text("Top in last week",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff040002)),),
                      ),
                    ],
                  ),

                ),
              ),
            ]
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r)
                )

              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                child: Column(
                  children: [
                    Text("The rankings will refresh every Sunday at 00:00 Am (GMT+3)", style: TextStyle(
                      fontSize: 15.sp,fontWeight: FontWeight.w400,color: Color(0xff716B6B)
                    ),),


                    Expanded(
                      child: ListView.builder(
                        itemCount: mynobelRankcontroller.myNobelRankList.length,
                          itemBuilder: (context,index){
                          return Column(
                            children: [
                              Divider(),
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical: 8.w),
                                child: Row(
                                  children: [
                                  Image.asset(mynobelRankcontroller.myNobelRankList[index]["rankImg"],width: 25.w,height: 25.w,),
                                    SizedBox(width: 5.w,),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 22.5.r,
                                          backgroundImage: AssetImage(mynobelRankcontroller.myNobelRankList[index]["proImg"]),
                                        ),
                                        SizedBox(width: 10.w,),
                                        Text(mynobelRankcontroller.myNobelRankList[index]["title"],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.sp,color: Colors.black),)
                                      ],
                                    ),

                                    Spacer(),

                                    Row(
                                      children: [

                                        Image.asset("images/icons/expP.png",width: 35.w,height: 18.w,),
                                        SizedBox(width: 5.w,),
                                        Text(mynobelRankcontroller.myNobelRankList[index]["id"],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.sp,color: Color(0xff808080)),)

                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          );





                          }),
                    ),
                  ],
                ),
              ),
            ),
          )




        ],
      ),
    );
  }
}
