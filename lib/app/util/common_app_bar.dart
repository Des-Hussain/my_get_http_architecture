import 'package:my_get_http_architecture/app/util/common_back_button.dart';
import 'package:my_get_http_architecture/app/util/common_text.dart';
import 'package:my_get_http_architecture/common/resources/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    super.key,
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w600,
    this.fontColor = AppColors.primaryText,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CommonBackButton(),
            Expanded(
              child: CommonText(
                text: text,
                fontSize: fontSize.sp,
                weight: fontWeight,
                color: fontColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
