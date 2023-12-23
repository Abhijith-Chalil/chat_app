import 'package:chat_app/presentation/theme/colors.dart';
import 'package:chat_app/presentation/theme/font_style.dart';
import 'package:chat_app/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(
                  height: 94,
                ),
                const Text(
                  "Bringing people together, one message at a time",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      fontFamily: "AllertaStencil"),
                ),
                const SizedBox(
                  height: 80,
                ),
                const Text("Choose an option", style: defaultFontStyle),
                const SizedBox(
                  height: 38,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton.defaultButton(title: "Bluetooth chat"),
                      const SizedBox(
                        height: 28,
                      ),
                      CustomButton.defaultButton(title: "Wi-Fi chat"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
