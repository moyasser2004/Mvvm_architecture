import 'package:flutter/material.dart';

import '../../../../../../core/style/styles.dart';
import '../../../../../../core/const/app_colors.dart';

class BookDetailsCenterContainer extends StatelessWidget {
  const BookDetailsCenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin:
          const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: const BoxDecoration(
                    color: AppColors.whiteContainer,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )),
                child: Text(
                  "19.99€",
                  style: AppStyles.styleBold16
                      .copyWith(color: Colors.black),
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: const BoxDecoration(
                    color: AppColors.orangeContainer,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Text(
                  "Free preview",
                  style: AppStyles.styleBold16
                      .copyWith(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
