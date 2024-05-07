import 'package:bookly/Features/Home/presation/views/widgets/CustomAppBarBookDetiles.dart';
import 'package:bookly/Features/Home/presation/views/widgets/Custom_List_View_Item.dart';
import 'package:bookly/Features/Home/presation/views/widgets/bookReating.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomAppBarBookDetailsView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: CustomListViewItem(),
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
           const  SizedBox(height: 20),
            BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
