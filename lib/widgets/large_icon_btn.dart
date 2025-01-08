import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/group_management_screen.dart';

class LargeIconBtn extends StatelessWidget {
  final title;
final VoidCallback onPressed;
  LargeIconBtn({this.title, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 45.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF0B5F84), // Set background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 24.w), // To keep the title centered
            Text(
              '$title',
              style: TextStyle(fontSize: 16.sp, color: Colors.white),
            ),

            Icon(
              Icons.arrow_forward_ios,
              size: 20.sp,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}