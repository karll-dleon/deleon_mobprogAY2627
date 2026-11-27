import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFont extends StatelessWidget {
  const CustomFont({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize.sp,
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}
