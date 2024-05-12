import 'package:bookly/Features/Home/presation/views/widgets/Custom_List_View_Item.dart';
import 'package:bookly/Features/Home/presation/views_model/features_books_bloc/features_book_cubit.dart';
import 'package:bookly/core/Widgets/Custom_error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturesBookCubit, FeaturesBookState>(
      builder: (context, state) {
        if (state is FeaturesBookSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CustomListViewItem(
                      ImageUrl: state
                          .books[index].volumeInfo.imageLinks!.smallThumbnail!,
                    ),
                  );
                }),
          );
        } else if (state is FeaturesBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
