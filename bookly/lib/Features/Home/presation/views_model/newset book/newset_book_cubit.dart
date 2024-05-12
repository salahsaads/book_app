import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepoImpl) : super(NewsetBookInitial());

  final HomeRepoImpl homeRepoImpl;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBookLoading());
    var result = await homeRepoImpl.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsetBookFailure(failure.errMessage));
    }, (books) {
      emit(NewsetBookSuccess(books));
    });
  }
}
