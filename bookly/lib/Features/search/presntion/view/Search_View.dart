import 'package:bookly/Features/search/presntion/view/Widgets/Search_View_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Search_View_body(),
      ),
    );
  }
}
