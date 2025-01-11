import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'helpingController.dart';

class Helping extends StatefulWidget {
  const Helping({super.key});

  @override
  State<Helping> createState() => _HelpingState();
}

class _HelpingState extends State<Helping> {

   Helpingcontroller helpingcontroller =Get.put(Helpingcontroller());
   Helpingcontroller1 helpingcontroller1 =Get.put(Helpingcontroller1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -10.sp,
        title: Text(
          "Helping",
          style: TextStyle(color: Color(0xff2B2B2B), fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Column(
          children: [
            TextFormField(
                controller: helpingcontroller.textEditingController,
                decoration: InputDecoration(
                  hintText: "Ener your user ID",
                  hintStyle: TextStyle(color: Color(0xff808080),fontSize: 18.sp,fontWeight: FontWeight.w400),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff808080)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff808080)),
                  ),
                ),
              ),

            SizedBox(height: 15.h,),
             TextFormField(
                controller: helpingcontroller1.textEditingController,
                maxLines: 4,
                decoration: InputDecoration(

                  hintText: "Write your Issue...",
                  hintStyle: TextStyle(color: Color(0xff808080),fontSize: 18.sp,fontWeight: FontWeight.w400),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff808080)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff808080)),
                  ),
                ),
              ),

            SizedBox(height: 15.h,),
            Row(
              children: [
                Container(
                  width: 96.w,
                  height: 88.h,
                  decoration: BoxDecoration(
                      color: Color(0xffF1F1F1),
                      borderRadius: BorderRadius.circular(8.r)
                  ),

                  child: Center(child: Icon(Icons.photo_outlined,color: Color(0xff808080),size: 35.r,)),
                ),
                Container(
                  width: 96.w,
                  height: 88.h,
                  color: Colors.white,
                  child: Center(child: Text("Upload",style: TextStyle(color: Color(0xff808080),fontSize: 18.sp,fontWeight: FontWeight.w400),)),
                )
              ],
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: double.infinity,
              height: 48.h,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Send",style: TextStyle(color:Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff0B5F84) ),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color(0xff0B5F84)
                        ),
                        borderRadius: BorderRadius.circular(5.r)
                    ))

                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
