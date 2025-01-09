import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'inboxsetting_controller.dart';

class InboxSetting extends StatefulWidget {
  const InboxSetting({super.key});

  @override
  State<InboxSetting> createState() => _InboxSettingState();
}

class _InboxSettingState extends State<InboxSetting> {

  InboxsettingController inboxsettingController=Get.put(InboxsettingController());
  InboxsettingController1 inboxsettingController1=Get.put(InboxsettingController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 50.h),
          Container(
            alignment: Alignment.bottomLeft,

            child: Row(
              children: [
                IconButton(
                    onPressed: (){
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded,color: Color(0xff202020),)),
                CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage("images/image/smp.png")
                ),
                SizedBox(width: 10.w,),
                Text(
                  "Md Habib Khan",
                  style: TextStyle(color: Color(0xff202020), fontSize: 20.sp, fontWeight: FontWeight.w500),
                ),

              ],
            ),
          ),
          SizedBox(height: 20.h),
          Divider(color:  Color(0xff808080).withOpacity(.3),),

          SizedBox(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.w),
              child: Row(
                children: [
                  Text("Clear chat history",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                ],
              ),
            ),
          ),
          Divider(color:  Color(0xff808080).withOpacity(.3),),
          SizedBox(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.w),
              child: Row(
                children: [
                  Text("Mute notification",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                  Spacer(),
                  Obx(
                    ()=> Switch(
                      value: inboxsettingController.switchController.value,
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Color(0xffC9C9C9),
                      trackOutlineColor:
                      WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                      activeTrackColor: Color(0xff2A58FF),
                      onChanged: (bool value) {
                        inboxsettingController.switchController.value=value;

                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(color:  Color(0xff808080).withOpacity(.3),),
          SizedBox(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.w),
              child: Row(
                children: [
                  Text("Add to blocklist",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Color(0xff202020)),),
                  Spacer(),
                  Obx(
                    ()=> Switch(
                      value:inboxsettingController1 .switchController1.value,
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Color(0xffC9C9C9),
                      trackOutlineColor:
                      WidgetStatePropertyAll(
                        Colors.transparent,
                      ),
                      activeTrackColor: Color(0xff2A58FF),
                      onChanged: (bool value) {
                        inboxsettingController1.switchController1.value=value;
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(color:  Color(0xff808080).withOpacity(.3),),


        ],
      ),

    );
  }
}
