import 'package:chat_app/presentation/theme/colors.dart';
import 'package:chat_app/presentation/theme/font_style.dart';
import 'package:flutter/material.dart';

class CustomButton {
  static GestureDetector defaultButton(
      {required String title,
      VoidCallback? onTap,
      Size? buttonSize,
      double? borderRadius}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: buttonSize != null ? buttonSize.height : 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 20.0),
          color: themeColor,
        ),
        child: Center(
            child: Text(
          title,
          style: defaultFontStyle,
        )),
      ),
    );
  }
}
