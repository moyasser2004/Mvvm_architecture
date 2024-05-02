import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view_model/get_details_cubit.dart';

import '../../../../../../core/class/media_query.dart';
import '../../../../../../core/utils/api/dio_helper.dart';
import '../../../../../../core/utils/services/services_locator.dart';
import '../../../../data/repository/get_details_repository_implementation.dart';
import '../../../view_model/get_details_state.dart';
import 'book_details_center_container.dart';
import 'book_details_center_text.dart';
import '../list_view_home_item.dart';
import '../list_view_home_screen.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetDetailsCubit>(
      create: (context) => GetDetailsCubit(
          getDetailsRepositoryImplementation:
              GetDetailsRepositoryImplementation(
                  dioHelper: getIt<DioHelper>()))
        ..getBookDetails(id),
      child: BlocBuilder<GetDetailsCubit, GetDetailsState>(
        builder: (context, state) {
          if (state is GetDetailsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetDetailsSuccess) {
            print(state.bookModel.volumeInfo?.imageLinks!.thumbnail);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQueryHelper.screenWidth / 4.7,
                          vertical: 30),
                      child: ListViewHomeItem(
                        aspectRatio: 2 / 3.3,
                        image: state.bookModel.volumeInfo?.imageLinks!
                                .thumbnail ??
                            "",
                      )),
                  const BookDetailsCenterText(),
                  const BookDetailsCenterContainer(),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      child: const Text(
                        "You can also like",
                        textAlign: TextAlign.start,
                      )),
                  ListViewHomeCustomer(
                    height: MediaQueryHelper.screenHeight / 7,
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text("Something went wrong"));
          }
        },
      ),
    );
  }
}
