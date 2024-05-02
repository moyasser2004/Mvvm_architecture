import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/core/class/media_query.dart';
import 'package:mvvm_architecture/core/theme/app_theme.dart';
import 'package:mvvm_architecture/features/home_feature/data/repository/home_repository_implementation.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view_model/popular_cubit.dart';

import 'core/class/router.dart';
import 'core/utils/services/services_locator.dart';
import 'features/home_feature/presentaion/view_model/best_seller_cubit.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryHelper.init(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider<BestSellerCubit>(
            create: (BuildContext context) => BestSellerCubit(
                homeRepositoryImplementation:
                    getIt<HomeRepositoryImplementation>())
              ..getBestSeller(),
          ),
          BlocProvider<PopularCubit>(
            create: (BuildContext context) => PopularCubit(
                homeRepositoryImplementation:
                    getIt<HomeRepositoryImplementation>())
              ..getPopular(),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppThemeData.themeDataDark(),
          routerConfig: AppRouter.router,
        ));
  }
}
