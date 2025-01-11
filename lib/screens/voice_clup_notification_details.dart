import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kitti/widgets/custom_text.dart';

class VoiceClupNotificationDetails extends StatefulWidget {

  final title;
   VoiceClupNotificationDetails({super.key, this.title});

  @override
  State<VoiceClupNotificationDetails> createState() => _VoiceClupNotificationDetailsState();
}

class _VoiceClupNotificationDetailsState extends State<VoiceClupNotificationDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: CustomText(title: widget.title,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        textColor: Colors.black,
      ),),
    ));
  }
}
