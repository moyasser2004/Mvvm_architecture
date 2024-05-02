import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_architecture/core/const/app_colors.dart';

import '../../../../../core/style/styles.dart';

class RatingListViewItems extends StatelessWidget {
  const RatingListViewItems(
      {super.key, required this.rating, required this.count});

  final String rating;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 18,
          color: AppColors.ratingGold,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating,
          style: AppStyles.styleBold16,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "($count)",
          style: AppStyles.styleBold10,
        ),
      ],
    );
  }
}
