import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../../core/class/media_query.dart';
import '../../../../../../core/const/app_images.dart';


class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 40, 18, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImagesName.logo,
            height: MediaQueryHelper.screenHeight/9,
            width: MediaQueryHelper.screenWidth/7,fit: BoxFit.fill,),
          IconButton(
              onPressed: (){},
              icon: const FittedBox(
                  child: Icon(FontAwesomeIcons.magnifyingGlass,size: 24,))
          )
        ],
      ),
    );
  }
}