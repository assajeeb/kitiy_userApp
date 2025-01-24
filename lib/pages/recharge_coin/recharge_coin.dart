import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/recharge_coin/yellowRD.dart';

import 'Set_tran_pass.dart';
import 'gift_record.dart';


class RechargeCoin extends StatefulWidget {
  const RechargeCoin({super.key});

  @override
  State<RechargeCoin> createState() => _RechargeCoinState();
}

class _RechargeCoinState extends State<RechargeCoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Recharge Coin",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Get.to(()=>GiftRecord());
              },
              icon: Icon(Icons.access_time,color: Color(0xff202020),))
        ],
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                width: double.infinity,
                height: 280.h,
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(15.r)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20.h,),
                    Text("Total Income",style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w400),),
                    SizedBox(height: 20.h,),
                    Text("1.50",style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.w700),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/icons/dd.png",width: 25.w,height: 15.h,),
                        SizedBox(width: 5.w,),
                        Text("Your Total Diamond",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                      ],
                    ),
                    SizedBox(height: 5.w,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                      height: 50.h,
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Image.asset("images/icons/yellowD.png",width: 20.w,height: 20.w,),
                              SizedBox(width: 5.w,),
                              Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),

                            ],
                          ),
                          Text("|",style: TextStyle(fontSize: 25.sp,color: Colors.grey.withOpacity(0.2)),),
                          Row(
                            children: [
                              Image.asset("images/icons/blackD.png",width: 20.w,height: 20.w,),
                              SizedBox(width: 5.w,),
                              Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                              SizedBox(width: 5.w,),
                              Image.asset("images/icons/cart.png",width: 25.w,height: 25.w,),
        
                            ],
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>SetTranPass());
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.w,),
                        height: 50.h,
                        padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("images/icons/coin.png",width: 20.w,height: 20.w,),
                            SizedBox(width: 5.w,),
                            Text("0.50",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),),
                            SizedBox(width: 5.w,),
                            Image.asset("images/icons/arrow.png",width: 25.w,height: 25.w,),

                          ],
                        ),
                      ),
                    ),
        
                  ],
                ),
              ),
              SizedBox(height: 5.h,),
              Container(
                width: double.infinity,
                height: 70.w,
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(15.r)
        
                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                width: double.infinity,
                height: 253.h,
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(15.r)
        
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h,),
                      Text("Service",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),
                      SizedBox(height: 10.h,),
                      Container(
                        width: double.infinity,
                        height: 170.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r)

                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 25.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25.h,),
                                  serviceItems("pre", "Premium"),
                                  SizedBox(height: 20.h,),
                                  serviceItems("family", "Family"),
                                  SizedBox(height: 20.h,),
                                  serviceItems("store", "Store"),

                                ],
                              ),
                              SizedBox(width: 20.h,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25.h,),
                                  serviceItems("nobel", "Nobel"),
                                  SizedBox(height: 20.h,),
                                  serviceItems("svip", "SVIP"),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(15.r)

                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15.h,),
                      Text("Game",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),
                      SizedBox(height: 10.h,),
                      Container(
                        width: double.infinity,
                        height: 122.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.r)

                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 25.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25.h,),
                                  serviceItems("gredy", "Greedy"),
                                  SizedBox(height: 20.h,),
                                  serviceItems("ludo", "Ludo"),


                                ],
                              ),
                              SizedBox(width: 20.h,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25.h,),
                                  serviceItems("fisher", "Fisher"),
                                  SizedBox(height: 20.h,),
                                  serviceItems("svip", "Dilicious"),


                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),

    );
  }

  Widget serviceItems(String image, text){
    return Row(
      children: [
        Image.asset("images/icons/$image.png",width: 20.w,height: 20.w,),
        SizedBox(width: 5.w,),
        Text(text,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
      ],
    );
  }
}
