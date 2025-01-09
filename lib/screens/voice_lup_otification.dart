import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/widgets/custom_text.dart';

class VoiceLupOtification extends StatefulWidget {
  const VoiceLupOtification({super.key});

  @override
  State<VoiceLupOtification> createState() => _VoiceLupOtificationState();
}

class _VoiceLupOtificationState extends State<VoiceLupOtification> {

  List<Map<String,dynamic>> notifyList = [
    {
      "name":"System notification"
    },{
      "name":"Unclaimed Lucky Bags"
    },{
      "name":"New Friend Request"
    },{
      "name":"Room/Group Invitations"
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

          leading: Image.asset("assets/icons/bell.png", width: 15.w,),
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
