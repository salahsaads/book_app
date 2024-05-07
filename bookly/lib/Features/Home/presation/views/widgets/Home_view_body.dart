import 'package:bookly/Features/Home/presation/views/widgets/Custom_appBar.dart';
import 'package:bookly/Features/Home/presation/views/widgets/ListViewBestSeller.dart';
import 'package:bookly/Features/Home/presation/views/widgets/List_View.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home_View_body extends StatelessWidget {
  const Home_View_body({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const Custom_appBar(),
              ),
              const BooksListView(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Best Seller',
                  style: Style.textStyle18.copyWith(fontFamily: Kfont),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
