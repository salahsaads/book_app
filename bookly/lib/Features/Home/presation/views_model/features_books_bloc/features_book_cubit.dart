import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'features_book_state.dart';

class FeaturesBookCubit extends Cubit<FeaturesBookState> {
  FeaturesBookCubit() : super(FeaturesBookInitial());
}
