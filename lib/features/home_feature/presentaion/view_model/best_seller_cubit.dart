import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/features/home_feature/data/repository/home_repository.dart';

import 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerStates> {
  HomeRepository homeRepositoryImplementation;
  BestSellerCubit({required this.homeRepositoryImplementation})
      : super(BestSellerInitialState());

  static BestSellerCubit get(context) => BlocProvider.of(context);

  Future<void> getBestSeller() async {
    emit(HomeGetBestSellerLoading());
    var result =
        await homeRepositoryImplementation.getBestSellingBook();
    result.fold((l) {
      emit(HomeGetBestSellerError(l.errMessage.toString()));
    }, (r) {
      emit(HomeGetBestSellerSuccess(r));
    });
  }
}
