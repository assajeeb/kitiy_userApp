import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kitti/screens/voice_clup_notification_details.dart';
import 'package:kitti/widgets/circular_image.dart';
import 'package:kitti/widgets/custom_text.dart';

class VoiceClupNotification  extends StatefulWidget {
  const VoiceClupNotification({super.key});

  @override
  State<VoiceClupNotification> createState() => _VoiceClupNotificationState();
}

class _VoiceClupNotificationState extends State<VoiceClupNotification> {

  List<Map<String,dynamic>> notifyList = [
    {
      "name":"System notification",
      "img":"assets/icons/bell.png"
    },{
      "name":"Unclaimed Lucky Bags",
      "img":"assets/icons/bell.png"
    },{
      "name":"New Friend Request",
      "img":"assets/icons/bell.png"
    },{
      "name":"Room/Group Invitations",
      "img":"assets/icons/request.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
title: " VoiceClup Notification",
fontWeight: FontWeight.w400,
fontSize: 14.sp,
textColor: Colors.black,
),),
      body: ListView.builder(
          itemCount: notifyList.length,
          itemBuilder:(context,index){

        return ListTile(
            onTap: (){
              Get.to(VoiceClupNotificationDetails(title:notifyList[index]['name'] ,));
            },
          leading: CircleAvatar(
            child: Image.asset("assets/icons/request.png"),
          ),
          title: CustomText(
            title: "${notifyList[index]['name']}",
            fontWeight: FontWeight.w400,
            fontSize: 16.sp,
            textColor: Colors.black,
          ),
          
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
        );
      }),
    ));
  }
}
