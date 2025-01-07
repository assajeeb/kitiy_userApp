import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SecurityPri extends StatefulWidget {
  const SecurityPri({super.key});

  @override
  State<SecurityPri> createState() => _SecurityPriState();
}

class _SecurityPriState extends State<SecurityPri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: -10.sp,
        title: Text(
          "Security & Privacy",
          style: TextStyle(color: Color(0xff2B2B2B), fontSize: 18.sp, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
    );
  }
}
