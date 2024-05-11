
import 'package:bookly/Features/Home/data/model/book_model/book_model.dart';
import 'package:bookly/core/errors/errors.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{


   Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}