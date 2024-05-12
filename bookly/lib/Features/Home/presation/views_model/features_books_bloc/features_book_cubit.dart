import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/Home_repo.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'features_book_state.dart';

class FeaturesBookCubit extends Cubit<FeaturesBookState> {
  FeaturesBookCubit(this.homeRepoImpl) : super(FeaturesBookInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturesBookLoading());
    var result = await homeRepoImpl.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturesBookFailure(failure.errMessage));
    }, (books) {
      emit(FeaturesBookSuccess(books));
    });
  }
}
