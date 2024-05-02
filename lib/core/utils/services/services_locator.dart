import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../../features/home_feature/data/repository/home_repository_implementation.dart';
import '../api/dio_helper.dart';

final getIt = GetIt.instance;
void setup() {
  // Register DioHelper
  getIt.registerSingleton<DioHelper>(DioHelper(dio: Dio()));

  // Register HomeRepository
  getIt.registerSingleton<HomeRepositoryImplementation>(
      HomeRepositoryImplementation(
          dioHelper: getIt.get<DioHelper>()));
}
