import 'package:dartz/dartz.dart';
import 'package:mvvm_architecture/features/home_feature/data/model/home_model.dart';

import '../../../../core/utils/error_handle/failure.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> getPopularBook();
  Future<Either<Failure, List<BookModel>>> getBestSellingBook();
}
