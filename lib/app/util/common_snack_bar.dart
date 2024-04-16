import 'package:my_get_http_architecture/app/config/app_router.dart';
import 'package:my_get_http_architecture/common/resources/colors.dart';
import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:flutter/material.dart';

enum SnackBarType { warn, error, info, success }

class CommonSnackBar {
  static message(
      {required String message, SnackBarType? type = SnackBarType.error}) {
    DelightToastBar(
            builder: (context) => ToastCard(
                  color: type == SnackBarType.error
                      ? AppColors.red
                      : type == SnackBarType.warn
                          ? AppColors.orange
                          : type == SnackBarType.success
                              ? AppColors.green
                              : AppColors.blue,
                  // leading: Icon(
                  //   icon,
                  //   color: AppColors.white,
                  //   size: 28,
                  // ),
                  title: Text(
                    message,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                    ),
                  ),
                ),
            autoDismiss: true,
            animationDuration: const Duration(milliseconds: 600))
        .show(globalContext!);
  }
}
