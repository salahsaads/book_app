import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'similer_book_cubit_state.dart';

class SimilerBookCubitCubit extends Cubit<SimilerBookCubitState> {
  SimilerBookCubitCubit(this.homeRepoImpl) : super(SimilerBookCubitInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchSimilarBooks() async {
    emit(SimilerBookCubitLoading());
    var result = await homeRepoImpl.fetchSimilarBooks(category: '');
    result.fold((failure) {
      emit(SimilerBookCubitFailure(failure.errMessage));
    }, (books) {
      emit(SimilerBookCubitSuccess(books));
    });
  }
}
