import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_architecture/features/home_feature/data/model/home_model.dart';

import '../../../../../../core/class/media_query.dart';
import '../../../../../../core/const/app_colors.dart';
import '../../../../../../core/const/app_rout_name.dart';
import '../../screen/book_details_screen.dart';
import 'best_seller_list_view_container_text.dart';
import '../list_view_home_item.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.books,
  });

  final BookModel books;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return BookDetailsScreen(
            id: books.id!,
          );
        }));
      },
      child: Container(
        height: MediaQueryHelper.screenHeight / 7.5,
        decoration: BoxDecoration(
          color: AppColors.appColorLight,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            children: [
              Expanded(
                child: ListViewHomeItem(
                  aspectRatio: 2 / 10,
                  image:
                      books.volumeInfo?.imageLinks!.thumbnail ?? "",
                ),
              ),
              Expanded(
                  flex: 4,
                  child: BestSellerListViewContainerText(
                    title: books.volumeInfo!.title ?? "",
                    auther:
                        books.volumeInfo!.authors.toString() ?? "",
                    rating: "",
                    count: '',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
