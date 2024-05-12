import 'package:bookly/Features/Home/presation/views/widgets/BookDetailsViewBody.dart';
import 'package:bookly/Features/Home/presation/views_model/similer%20book%20cubit/similer_book_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<SimilerBookCubitCubit>(context).fetchSimilarBooks();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Bookdetailsviewbody(),
    ));
  }
}
