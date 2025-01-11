import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Yellowrd extends StatefulWidget {
  const Yellowrd({super.key});

  @override
  State<Yellowrd> createState() => _YellowrdState();
}

class _YellowrdState extends State<Yellowrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Redeem Diamonds",
          style: TextStyle(color: Colors.black, fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),

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
                width: double.infinity,
                height: 134.w,
                decoration: BoxDecoration(
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(15.r)

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Your Current Bens",style: TextStyle(color: Color(0xff0B5F84),fontSize: 15.sp,fontWeight: FontWeight.w400),)
                 , SizedBox(height: 8.w,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("images/icons/coin.png",width: 25.w,height: 23.57.w,),
                      SizedBox(width: 5.w,),
                      Text("0.50",style: TextStyle(color: Colors.black,fontSize: 25.sp,fontWeight: FontWeight.w700),),
                    ],
                  )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
