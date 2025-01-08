import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularImage extends StatelessWidget {
  final size;
  final img;
  final borderColor;


   CircularImage({super.key, this.size, this.img, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?? 100.w,
      height: size?? 100.h,
      clipBehavior: Clip.antiAlias,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: borderColor ?? Colors.purple,
      ),
      child: Image.asset(
        "${img??"assets/girl.png" }",

        fit: BoxFit.cover,

      ),

    );
  }
}
