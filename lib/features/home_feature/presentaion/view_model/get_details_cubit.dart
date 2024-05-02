import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_architecture/features/home_feature/presentaion/view_model/get_details_state.dart';

import '../../data/repository/get_details_repository.dart';

class GetDetailsCubit extends Cubit<GetDetailsState> {
  final GetDetailsRepository getDetailsRepositoryImplementation;

  GetDetailsCubit({required this.getDetailsRepositoryImplementation})
      : super(GetDetailsInitial());

  static GetDetailsCubit get(context) => BlocProvider.of(context);

  void getBookDetails(String id) async {
    emit(GetDetailsLoading());
    var result =
        await getDetailsRepositoryImplementation.getDetails(id);
    result.fold((l) {
      emit(GetDetailsError(l.errMessage.toString()));
    }, (r) {
      emit(GetDetailsSuccess(r));
    });
  }
}
