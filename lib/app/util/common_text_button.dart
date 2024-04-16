import 'package:my_get_http_architecture/app/util/common_text.dart';
import 'package:my_get_http_architecture/common/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = AppColors.primary,
    this.animationDuration,
    this.alignment,
    this.width = 60,
    this.elevation = 2,
    this.color = AppColors.white,
    this.fontSize,
    this.fontWeight = FontWeight.w500,
  });
  final VoidCallback onPressed;
  final Duration? animationDuration;
  final AlignmentGeometry? alignment;
  final Color? backgroundColor;
  final double width;
  final String text;
  final Color color;
  final double elevation;
  final double? fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.5.h,
      width: width.w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(elevation),
          shadowColor:
              MaterialStateProperty.all(AppColors.primary.withOpacity(.8)),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 12, horizontal: 6)),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          animationDuration: animationDuration,
        ),
        child: CommonText(
          text: text,
          fontSize: fontSize ?? 13.sp,
          weight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
