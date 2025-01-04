
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonOne extends StatelessWidget {
  final title;
  final width;
  final textColor;
  final fontSize;
  final color;
  VoidCallback onTab;

  CustomButtonOne({
    this.title,
    this.width,
    this.fontSize,
    this.textColor,
    this.color,
    required this.onTab,

  });

  @override
  Widget build(BuildContext context) {
    return    InkWell(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        width: width?? 100.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: color?? Colors.black,
          border: Border.all(width: 0.5, color: Colors.black12),
          borderRadius: BorderRadius.circular(15.r),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        child:  Text(
          "$title",
          style: TextStyle(fontSize:fontSize?? 12.sp,
              fontWeight: FontWeight.w700,

              color: textColor?? Colors.white),
        ),
      ),
    );
  }
}
