import 'package:flutter/material.dart';
import '../../../../../core/const/app_images.dart';



class SplashScreenImage extends StatelessWidget {
  const SplashScreenImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2/1.7,
        child: Image.asset(AppImagesName.logo),
    );
  }
}
