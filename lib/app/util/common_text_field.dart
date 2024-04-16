import 'package:my_get_http_architecture/common/resources/colors.dart';
import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.controller,
    this.isFilledColor = false,
    this.hintText = '',
    this.suffixPadding = 7.5,
    this.prefixPadding = 7.5,
    this.containersize = 60,
    this.txtweight = FontWeight.w400,
    this.hintweight = FontWeight.w400,
    this.hintSize = 15.0,
    this.fontsize = 15.0,
    this.hintColor = AppColors.grey,
    this.borderColor = AppColors.grey,
    this.readOnly = false,
    this.iconColor,
    this.fontFamily = 'Poppins',
    this.minLines = 1,
    this.maxLines = 1,
    this.textOnTap,
    this.onChanged,
    this.validator,
    this.changeicon = false,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.inputType = TextInputType.text,
    this.suffixIcon,
    this.suffixIconOnTap,
    this.pass = false,
    this.enableBorder = AppColors.grey,
    this.disableBorder = AppColors.grey,
    this.textColor = AppColors.black,
    this.cursorColor = AppColors.secondary,
    this.padding = const EdgeInsets.all(0.0),
    this.contentPadding =
        const EdgeInsets.only(right: 20.0, top: 18, bottom: 14, left: 20),
    this.prefix,
    this.isBorderEnabled = true,
    this.isSuffix = true,
    this.textOverflow,
  });
  final double suffixPadding;
  final double prefixPadding;
  final TextEditingController controller;
  final String hintText;
  final String fontFamily;
  final double fontsize;
  final double containersize;
  final FontWeight txtweight;
  final FontWeight hintweight;
  final double hintSize;
  final Color hintColor;
  final Color borderColor;
  final Color enableBorder;
  final Color disableBorder;
  final Color textColor;
  final Color cursorColor;
  final Color? iconColor;
  final bool pass;
  final bool readOnly;
  final bool changeicon;
  final bool isFilledColor;
  final Function()? textOnTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType inputType;
  final int minLines;
  final int? maxLines;
  final IconData? suffixIcon;
  final VoidCallback? suffixIconOnTap;
  final Widget? prefix;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry contentPadding;
  final AutovalidateMode? autoValidateMode;
  final bool isBorderEnabled;
  final bool isSuffix;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        controller: controller,
        cursorColor: cursorColor,
        keyboardType: inputType,
        obscureText: pass,
        readOnly: readOnly,
        minLines: minLines,
        maxLines: maxLines,
        onTap: textOnTap,
        validator: validator,
        autovalidateMode: autoValidateMode,
        textAlignVertical: TextAlignVertical.top,
        style: TextStyle(
          fontFamily: fontFamily,
          fontWeight: txtweight,
          fontSize: fontsize,
          color: textColor,
          overflow: textOverflow,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: isFilledColor,
          hintText: hintText,
          // suffix: GestureDetector(onTap: suffixIconIconTap),
          suffixIcon: isSuffix
              ? IconButton(
                  onPressed: suffixIconOnTap,
                  icon: Icon(
                    suffixIcon,
                    color: AppColors.black.withOpacity(0.5),
                  ),
                  color: AppColors.grey,
                )
              : null,
          prefixIcon: prefix,
          prefixIconConstraints: const BoxConstraints(maxHeight: 26),
          // suffixIconConstraints: const BoxConstraints(maxHeight: 26),
          contentPadding: contentPadding,
          hintStyle: TextStyle(
              color: hintColor.withOpacity(0.7),
              fontFamily: fontFamily,
              fontSize: hintSize,
              fontWeight: hintweight),
          focusedBorder: isBorderEnabled
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor, width: .5),
                  borderRadius: BorderRadius.circular(8))
              : UnderlineInputBorder(
                  borderSide: BorderSide(color: borderColor, width: .5),
                ),
          border: isBorderEnabled
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor, width: .5),
                  borderRadius: BorderRadius.circular(8))
              : UnderlineInputBorder(
                  borderSide: BorderSide(color: disableBorder, width: .5),
                ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: disableBorder, width: .5)),
          enabledBorder: isBorderEnabled
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: enableBorder, width: .5),
                  borderRadius: BorderRadius.circular(8))
              : UnderlineInputBorder(
                  borderSide: BorderSide(color: enableBorder, width: .5),
                ),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.25)),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
