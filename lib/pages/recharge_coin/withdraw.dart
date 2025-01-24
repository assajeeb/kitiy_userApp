import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitiy_userapp/pages/recharge_coin/widthdarw_controller.dart';
import 'package:kitiy_userapp/pages/recharge_coin/withdraw_history.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  final WidthdarwController widthdarwController = Get.put(WidthdarwController());
  final WidthdarwController1 widthdarwController1 = Get.put(WidthdarwController1());
  final WidthdarwController2 widthdarwController2 = Get.put(WidthdarwController2());
  final WidthdarwController3 widthdarwController3 = Get.put(WidthdarwController3());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),

        width: double.infinity,
        height: 420.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Color(0xffF1F1F1)
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.h,),
              TextFormField(
                controller: widthdarwController.textEditingController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter Bens",
                  hintStyle: TextStyle(
                    color: const Color(0xff808080),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color:Colors.transparent)
                  ),
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide(color:Colors.transparent),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),

              TextFormField(
                controller: widthdarwController1.textEditingController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.search,size: 25.r,color: Color(0xff808080),),

                  hintText: "Enter user ID",
                  hintStyle: TextStyle(
                    color: const Color(0xff808080),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide(color:Colors.transparent),
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color:Colors.transparent)
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              TextFormField(
                controller: widthdarwController2.textEditingController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.keyboard_arrow_down,size: 25.r,color: Color(0xff808080),),
                  hintText: "Bkash",
                  hintStyle: TextStyle(
                    color: const Color(0xff808080),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide(color:Colors.transparent),
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color:Colors.transparent)
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              TextFormField(
                controller: widthdarwController3.textEditingController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,

                  hintText: "Enter your number",
                  hintStyle: TextStyle(
                    color: const Color(0xff808080),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.r),
                    borderSide: BorderSide(color:Colors.transparent),
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                      borderSide: BorderSide(color:Colors.transparent)
                  ),
                ),
              ),

              SizedBox(height: 30.h,),
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {


                  },
                  child: Text(
                    "Withdraw",
                    style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                  style: ButtonStyle(
                    shape:  WidgetStatePropertyAll(RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff0B5F84)),
                      borderRadius: BorderRadius.circular(5.r),
                    ),),
                    backgroundColor: WidgetStatePropertyAll((Color(0xff0B5F84)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              TextButton(
                  onPressed: (){
                    Get.to(()=>WithdrawHistory());
                  },
                  child: Text("Withdraw history",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Color(0xff808080)),),
             )

            ],
          ),
        ),
      ),
    );
  }
}
