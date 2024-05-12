import 'package:bookly/Features/Home/presation/views/widgets/BestSellerItem.dart';
import 'package:bookly/Features/Home/presation/views_model/newset%20book/newset_book_cubit.dart';
import 'package:bookly/core/Widgets/Custom_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBookCubit, NewsetBookState>(
      builder: (context, state) {
        if (state is NewsetBookSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewsetBookFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 3,
                ),
                CircularProgressIndicator(),
              ],
            ),
          );
        }
      },
    );
  }
}
