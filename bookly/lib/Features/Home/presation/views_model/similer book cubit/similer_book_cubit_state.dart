part of 'similer_book_cubit_cubit.dart';

sealed class SimilerBookCubitState extends Equatable {
  const SimilerBookCubitState();

  @override
  List<Object> get props => [];
}

final class SimilerBookCubitInitial extends SimilerBookCubitState {}


final class SimilerBookCubitLoading extends SimilerBookCubitState {}

final class SimilerBookCubitSuccess extends SimilerBookCubitState {
  final List<BookModel> books;

  SimilerBookCubitSuccess(this.books);
}

final class SimilerBookCubitFailure extends  SimilerBookCubitState   {
  final String errMessage;
  const SimilerBookCubitFailure(this.errMessage);
}
