import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/class/media_query.dart';
import '../../view_model/popular_cubit.dart';
import '../../view_model/popular_state.dart';
import 'list_view_home_item.dart';

class ListViewHomeCustomer extends StatelessWidget {
  final double height;

  const ListViewHomeCustomer({super.key, this.height = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height == 0
            ? MediaQueryHelper.screenHeight / 4.4
            : height,
        child: BlocBuilder<PopularCubit, PopularStates>(
          builder: (context, state) {
            if (state is PopularGetPopularSuccess) {
              return ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: ListViewHomeItem(
                    aspectRatio: 2 / 3.3,
                    image: state.books[index].volumeInfo?.imageLinks!
                            .thumbnail ??
                        "",
                  ),
                ),
              );
            } else if (state is PopularGetPopularError) {
              return Center(
                child: Text(state.error.toString()),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
