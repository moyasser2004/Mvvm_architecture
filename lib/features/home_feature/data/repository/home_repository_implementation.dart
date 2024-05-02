import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mvvm_architecture/core/const/app_link.dart';
import 'package:mvvm_architecture/core/utils/api/dio_helper.dart';
import 'package:mvvm_architecture/core/utils/error_handle/failure.dart';
import 'package:mvvm_architecture/features/home_feature/data/model/home_model.dart';
import 'home_repository.dart';

class HomeRepositoryImplementation implements HomeRepository {
  HomeRepositoryImplementation({required this.dioHelper});
  final DioHelper dioHelper;

  @override
  Future<Either<Failure, List<BookModel>>> getPopularBook() async {
    try {
      var response =
          await dioHelper.getData(url: AppLink.getNewsBook);
      List<BookModel> books = [];
      for (var e in response.data['items']) {
        books.add(BookModel.fromJson(e));
      }
      return Right(books);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioException(error));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>>
      getBestSellingBook() async {
    try {
      var response =
          await dioHelper.getData(url: AppLink.getBestSellerBook);
      List<BookModel> books = [];
      for (var e in response.data['items']) {
        books.add(BookModel.fromJson(e));
      }
      return Right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServerFailure.fromDioException(error));
      }
      return left(ServerFailure(error.toString()));
    }
  }
}
