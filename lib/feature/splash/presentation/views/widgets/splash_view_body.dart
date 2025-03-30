import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_deta.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
    super.initState();
  }

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
                  speed: const Duration(milliseconds: 100),
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
