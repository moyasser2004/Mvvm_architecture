import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_architecture/core/const/app_rout_name.dart';
import 'package:mvvm_architecture/features/splash_feature/presentation/view/widget/splash_screen_image.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() =>
      _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  bool opacity = false;

  void timerImage() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        opacity = true;
      });
    });
  }

  void timerNavigator() {
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        context.go(AppRoutName.homeScreen);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    timerImage();
    timerNavigator();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
          opacity: opacity ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 900),
          curve: Curves.fastOutSlowIn,
          child: const SplashScreenImage()),
    );
  }
}
