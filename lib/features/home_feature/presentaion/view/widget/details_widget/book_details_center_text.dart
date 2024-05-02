import 'package:flutter/material.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view/widget/rating_list_view_items.dart';

import '../../../../../../core/style/styles.dart';
import '../../../../../../core/const/app_colors.dart';

class BookDetailsCenterText extends StatelessWidget {
  const BookDetailsCenterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "The Jungle Book",
          style: AppStyles.styleBold28,
        ),
        Text(
          "Rudyard Kipling",
          style: AppStyles.styleBold16
              .copyWith(color: AppColors.fontGrey),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: RatingListViewItems(
            rating: '',
            count: '',
          ),
        ),
      ],
    );
  }
}
