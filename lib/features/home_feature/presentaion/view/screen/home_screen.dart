import 'package:flutter/material.dart';
import 'package:mvvm_architecture/core/style/styles.dart';
import '../widget/home_widget/app_bar_home_screen.dart';
import '../widget/home_widget/best_seller_list_view_customer.dart';
import '../widget/list_view_home_screen.dart';

class HomeScreenCustomer extends StatelessWidget {
  const HomeScreenCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarHomeScreen(),
                ListViewHomeCustomer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20, horizontal: 20),
                  child: Text(
                    "Best Seller",
                    style: AppStyles.styleSemiBold21,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: BestSellerListViewCustomer(),
          )
        ]));
  }
}
