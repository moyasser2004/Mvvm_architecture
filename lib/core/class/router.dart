import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_architecture/core/const/app_rout_name.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view/screen/book_details_screen.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view/screen/home_screen.dart';
import 'package:mvvm_architecture/features/splash_feature/presentation/view/screen/spash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutName.homeScreen,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreenCustomer(),
      ),
    ],
  );
}
