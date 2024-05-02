import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/features/home_feature/data/repository/home_repository.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view_model/popular_state.dart';

class PopularCubit extends Cubit<PopularStates> {
  HomeRepository homeRepositoryImplementation;
  PopularCubit({required this.homeRepositoryImplementation})
      : super(PopularInitialState());

  static PopularCubit get(context) => BlocProvider.of(context);

  Future<void> getPopular() async {
    emit(PopularGetPopularLoading());
    var result = await homeRepositoryImplementation.getPopularBook();
    result.fold(
      (l) {
        emit(PopularGetPopularError(l.errMessage.toString()));
      },
      (r) {
        emit(PopularGetPopularSuccess(r));
      },
    );
  }
}
