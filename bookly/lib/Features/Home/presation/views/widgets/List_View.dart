
import 'package:bookly/Features/Home/presation/views/widgets/Custom_List_View_Item.dart';
import 'package:flutter/cupertino.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomListViewItem(),
            );
          }),
    );
  }
}
