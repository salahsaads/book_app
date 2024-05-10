import 'package:bookly/Features/search/presntion/view/Widgets/Custom_Search_Text.dart';
import 'package:bookly/Features/search/presntion/view/Widgets/Search_list_View.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Search_View_body extends StatelessWidget {
  const Search_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Style.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
