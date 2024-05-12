import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/Home/presation/views_model/features_books_bloc/features_book_cubit.dart';
import 'package:bookly/Features/Home/presation/views_model/newset%20book/newset_book_cubit.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturesBookCubit(
                  getIt.get<HomeRepoImpl>(),
                )..fetchFeaturedBooks()),
        BlocProvider(
          create: (context) => NewsetBookCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewsetBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            scaffoldBackgroundColor: Kcolor_main,
            brightness: Brightness.dark),
      ),
    );
  }
}
