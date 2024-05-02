import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:mvvm_architecture/core/utils/error_handle/failure.dart';

import 'package:mvvm_architecture/features/home_feature/data/model/home_model.dart';

import '../../../../core/const/app_link.dart';
import '../../../../core/utils/api/dio_helper.dart';
import 'get_details_repository.dart';

class GetDetailsRepositoryImplementation
    implements GetDetailsRepository {
  final DioHelper dioHelper;

  GetDetailsRepositoryImplementation({required this.dioHelper});

  @override
  Future<Either<Failure, BookModel>> getDetails(String id) async {
    try {
      var response =
          await dioHelper.getData(url: AppLink.getNewsBook);
      BookModel book = BookModel.fromJson(response.data);
      return Right(book);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioException(error));
    }
  }
}
