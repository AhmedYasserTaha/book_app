import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_deta.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetsDeta.logo,
              width: MediaQuery.of(context).size.width * 0.5,
              fit: BoxFit.contain,
            ),
            const Gap(25),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'Read Free Books',
                  textStyle: Styles.textStyle20,
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 500),
              onFinished: () {
                GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
