import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'convert_controller.dart';

class Convert extends StatefulWidget {
  const Convert({super.key});

  @override
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {

  final ConvertController convertController=Get.put(ConvertController());
  final ConvertController1 convertController1=Get.put(ConvertController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
        padding: EdgeInsets.symmetric(vertical: 20.h),
        width: double.infinity,
        height: 290.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Color(0xffF1F1F1)
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextFormField(
                controller: convertController.textEditingController,
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
              Image.asset("images/icons/arrow.png",width: 25.w,height: 25.w,),
              SizedBox(height: 10.h,),
              TextFormField(
                controller: convertController1.textEditingController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Black Total Diamond",
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
                    "Convert",
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
              )

            ],
          ),
        ),
      ),
    );
  }
}
