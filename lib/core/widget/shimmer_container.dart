import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

import '../const/app_colors.dart';



class CustomerShimmerContainer extends StatelessWidget {
  const CustomerShimmerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.appColorLighter,
      highlightColor: AppColors.appColorDark,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.appColorDarkest,
          borderRadius: BorderRadius.circular(12),
        ),
      )
      ,);
  }
}