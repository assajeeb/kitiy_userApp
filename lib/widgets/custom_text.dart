import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final title;
  final fontSize;
  final fontWeight;
  final textColor;
  final textAlign;

  CustomText(
      {super.key,
        this.title,
        this.fontSize,
        this.fontWeight,
        this.textColor,
        this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(
        fontSize: fontSize ?? 12.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: textColor ?? Colors.black,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}
