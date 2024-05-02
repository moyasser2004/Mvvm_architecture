import 'package:flutter/material.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view/widget/rating_list_view_items.dart';

import '../../../../../../core/class/media_query.dart';
import '../../../../../../core/style/styles.dart';

class BestSellerListViewContainerText extends StatelessWidget {
  const BestSellerListViewContainerText({
    super.key,
    required this.title,
    required this.auther,
    required this.rating,
    required this.count,
  });

  final String title;
  final String auther;
  final String rating;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 15),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: MediaQueryHelper.screenWidth / 3.1,
              child: Text(
                title,
                softWrap: true,
                maxLines: 2,
                style: AppStyles.styleBold16,
              )),
          const SizedBox(
            height: 3,
          ),
          Text(
            auther,
            style: AppStyles.styleBold10,
          ),
          Row(
            children: [
              Text(
                "00.0",
                style: AppStyles.styleBold16,
              ),
              const Spacer(),
              RatingListViewItems(
                rating: rating,
                count: count,
              ),
            ],
          )
        ],
      ),
    );
  }
}
