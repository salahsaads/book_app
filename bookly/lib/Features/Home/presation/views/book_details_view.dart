import 'package:bookly/Features/Home/presation/views/widgets/BookDetailsViewBody.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Bookdetailsviewbody(),
    ));
  }
}
