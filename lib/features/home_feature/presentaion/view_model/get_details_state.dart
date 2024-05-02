import 'package:mvvm_architecture/features/home_feature/data/model/home_model.dart';

abstract class GetDetailsState {}

class GetDetailsInitial extends GetDetailsState {}

class GetDetailsLoading extends GetDetailsState {}

class GetDetailsSuccess extends GetDetailsState {
  final BookModel bookModel;
  GetDetailsSuccess(this.bookModel);
}

class GetDetailsError extends GetDetailsState {
  final String message;
  GetDetailsError(this.message);
}
