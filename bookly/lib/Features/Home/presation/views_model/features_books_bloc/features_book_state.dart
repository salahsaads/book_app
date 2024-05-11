part of 'features_book_cubit.dart';

sealed class FeaturesBookState extends Equatable {
  const FeaturesBookState();

  @override
  List<Object> get props => [];
}

final class FeaturesBookInitial extends FeaturesBookState {}

final class FeaturesBookLoading extends FeaturesBookState {}

final class FeaturesBookFailure extends FeaturesBookState {
  final String errMessage;
  const FeaturesBookFailure(this.errMessage);
}

final class FeaturesBookSuccess extends FeaturesBookState {
  final List<BookModel> books;
  const FeaturesBookSuccess(this.books);
}
