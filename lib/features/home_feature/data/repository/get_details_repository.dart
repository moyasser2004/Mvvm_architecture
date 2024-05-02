import 'package:dartz/dartz.dart';

import '../../../../core/utils/error_handle/failure.dart';
import '../model/home_model.dart';

abstract class GetDetailsRepository {
  Future<Either<Failure, BookModel>> getDetails(String id);
}
