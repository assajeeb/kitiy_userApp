
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
  final fontWeight;
 final radius;
  final img;
  final imgColor;
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
    this.fontWeight,
    this.radius,
    this.img,
    this.imgColor,
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
          borderRadius: BorderRadius.circular(radius?? 15.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("$img", color: imgColor?? Colors.green,
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
              style: TextStyle(fontSize:fontSize?? 12.sp,
                  fontWeight:fontWeight?? FontWeight.w400,
                  color: textColor?? Colors.black),
            ),
          ],
        ),
      ),

    );
  }
}
