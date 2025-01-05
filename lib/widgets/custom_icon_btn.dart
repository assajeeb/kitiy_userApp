
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconBtn extends StatelessWidget {
  final title;
  final width;
  final height;

  final btnColor;
  final textColor;
  final fontSize;

  final img;
  final imgHeight;
  final imgWidth;
  VoidCallback onTab;
  CustomIconBtn({
    this.title,
    this.width,
    this.height,
    this.btnColor,
    this.textColor,
    this.fontSize,
    this.img,

    this.imgWidth,
    this.imgHeight,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: width ?? 100.w,
        height: height?? 35.h,
        decoration: BoxDecoration(
          color: btnColor?? Colors.grey[100],
          border: Border.all(width: 0.5, color: Colors.black12),
          borderRadius: BorderRadius.circular(15.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("$img", color: Colors.white,
              height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              "$title",
              style: TextStyle(fontSize:fontSize?? 12.sp, color: textColor?? Colors.black),
            ),
          ],
        ),
      ),

    );
  }
}
