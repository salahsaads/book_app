import 'package:bookly/Features/Home/presation/views/widgets/CustomAppBarBookDetiles.dart';
import 'package:bookly/Features/Home/presation/views/widgets/Custom_List_View_Item.dart';
import 'package:bookly/Features/Home/presation/views/widgets/bookReating.dart';
import 'package:bookly/Features/Home/presation/views/widgets/booksAction.dart';
import 'package:bookly/Features/Home/presation/views_model/similer%20book%20cubit/similer_book_cubit_cubit.dart';
import 'package:bookly/core/Widgets/Custom_error.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(slivers: [
      SliverFillRemaining(
          child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomAppBarBookDetailsView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .2),
                child: CustomListViewItem(
                  ImageUrl: 'https://picsum.photos/250?image=9',
                ),
              ),
              const SizedBox(
                height: 43,
              ),
              Text(
                'The Jungle Book',
                style: Style.textStyle30,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Rudyard Kipling',
                style: Style.textStyle20,
              ),
              const SizedBox(height: 20),
              BookRating(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(height: 37),
              BooksAction(),
              Expanded(child: const SizedBox(height: 50)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You Can also like',
                  style:
                      Style.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 16),
              SimilerListeViewItem()
            ],
          ),
        ),
      ))
    ]);
  }
}

class SimilerListeViewItem extends StatelessWidget {
  const SimilerListeViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBookCubitCubit, SimilerBookCubitState>(
      builder: (context, state) {
        if (state is SimilerBookCubitSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .17,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:  state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomListViewItem(
                      ImageUrl: 'https://picsum.photos/250?image=9',
                    ),
                  );
                }),
          );
        } else if (state is SimilerBookCubitFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
