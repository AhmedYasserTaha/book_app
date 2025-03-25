import 'package:bookly_app/core/utils/assets_deta.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Image.asset(AssetsDeta.logo)]));
  }
}
