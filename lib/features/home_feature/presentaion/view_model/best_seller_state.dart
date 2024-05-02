import '../../data/model/home_model.dart';

abstract class BestSellerStates {}

class BestSellerInitialState extends BestSellerStates {}

class HomeGetBestSellerLoading extends BestSellerStates {}

class HomeGetBestSellerSuccess extends BestSellerStates {
  List<BookModel> books;
  HomeGetBestSellerSuccess(this.books);
}

class HomeGetBestSellerError extends BestSellerStates {
  final String error;
  HomeGetBestSellerError(this.error);
}
