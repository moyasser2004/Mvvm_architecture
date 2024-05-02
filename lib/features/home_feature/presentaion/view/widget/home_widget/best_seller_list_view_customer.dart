import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view_model/best_seller_state.dart';
import '../../../view_model/best_seller_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListViewCustomer extends StatelessWidget {
  const BestSellerListViewCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerStates>(
      builder: (context, state) {
        if (state is HomeGetBestSellerSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 7, vertical: 7),
                child: BestSellerListViewItem(
                  books: state.books[index],
                )),
          );
        } else if (state is HomeGetBestSellerError) {
          return Center(
            child: Text(state.error.toString()),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
