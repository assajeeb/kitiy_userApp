import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'inbox_controller.dart';
import 'inbox_setting.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {


  InboxController inboxController=Get.put(InboxController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,
      // leading icon hobena
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: GestureDetector(
          onTap: (){
            Get.to(()=>InboxSetting());
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundImage: AssetImage("images/image/smp.png")
              ),
              SizedBox(width: 10.w,),
              Text(
                "Md Habib Khan",
                style: TextStyle(color: Color(0xff0B5F84), fontSize: 18.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(()=>InboxSetting());
            },
            icon: Icon(Icons.info, color: Color(0xff0B5F84)),
          ),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:10.w),
        child: Column(
          children: [
            SizedBox(height: 40.h,),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:5.w,vertical: 5.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff808080),
                  ),
                  borderRadius: BorderRadius.circular(25.r)
                ),
                child: Text("Today 12:00",style: TextStyle(fontSize: 12.sp,color: Color(0xff2A58FF),fontWeight: FontWeight.w400),),
              ),
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    color: Color(0xff2A58FF),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.r),
                      topLeft:  Radius.circular(15.r),
                      bottomLeft:  Radius.circular(15.r),
                      bottomRight: Radius.zero
                    )
                  ),
                  child: Text("Lorem Ipsum is simply dummy text\n of the printing and typesetting\n industry. Lorem Ipsum has been the\n industry's standard dummy text ever\n since the 1500s.",
                  style: TextStyle(color: Colors.white,fontSize: 16.sp),) ,
                ),
                SizedBox(width: 5.h,),
                CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage("images/image/smp.png")
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage("images/image/smp.png")
                ),
                SizedBox(width: 5.h,),
                Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                      color: Color(0xff90A4AD),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.r),
                          topLeft:  Radius.circular(15.r),
                          bottomLeft:  Radius.circular(15.r),
                          bottomRight: Radius.zero
                      )
                  ),
                  child: Text("Hlw! How are you..",
                    style: TextStyle(color: Colors.white,fontSize: 16.sp),) ,
                ),


              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: inboxController.textEditingController,

                    decoration: InputDecoration(
                      suffixIcon:SizedBox(child: ImageIcon(AssetImage("images/icons/pic.png"),size: 15.r,)),
                      prefixIcon:SizedBox(child: ImageIcon(AssetImage("images/icons/chat.png"),size: 15.r,)),


                      hintText: "Text here...!",
                      hintStyle: TextStyle(color: Color(0xff808080),fontSize: 14.sp,fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.r),
                        borderSide: BorderSide(color: Color(0xff808080)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.r),
                        borderSide: BorderSide(color: Color(0xff808080)),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10.h,),
                CircleAvatar(
                    radius: 25.r,
                    backgroundColor: Color(0xff57A2FF),
                    child: ImageIcon(AssetImage("images/icons/send.png"),color: Colors.white,)
                ),




              ],
            ),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  }
}
