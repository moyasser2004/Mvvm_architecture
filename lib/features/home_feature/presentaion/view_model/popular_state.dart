import '../../data/model/home_model.dart';

abstract class PopularStates {}

class PopularInitialState extends PopularStates {}

class PopularGetPopularLoading extends PopularStates {}

class PopularGetPopularSuccess extends PopularStates {
  List<BookModel> books;
  PopularGetPopularSuccess(this.books);
}

class PopularGetPopularError extends PopularStates {
  final String error;
  PopularGetPopularError(this.error);
}
