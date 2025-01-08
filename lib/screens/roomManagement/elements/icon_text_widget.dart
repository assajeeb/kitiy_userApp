import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final double borderRadius;
  final double iconSize;
  final TextStyle? textStyle;

  const IconTextWidget({super.key,
    required this.icon,
    required this.text,
    this.backgroundColor = const Color.fromRGBO(255, 255, 255, 0.7),
    this.borderRadius = 12.0,
    this.iconSize = 24.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: iconSize,
            color: textStyle?.color ?? Colors.black,
          ),
          SizedBox(width: 8.0),
          Text(
            text,
            style: textStyle ?? TextStyle(fontSize: 16.0, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
