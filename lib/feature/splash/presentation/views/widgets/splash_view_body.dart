import 'package:bookly_app/core/utils/assets_deta.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gap/gap.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsDeta.logo),
          const Gap(25),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Read Free Books',
                  textStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
