import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/Home/presation/views/Home_view.dart';
import 'package:bookly/Features/Home/presation/views/book_details_view.dart';
import 'package:bookly/Features/Home/presation/views_model/similer%20book%20cubit/similer_book_cubit_cubit.dart';
import 'package:bookly/Features/search/presntion/view/Search_View.dart';
import 'package:bookly/Features/splash/presntion/views/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splach_View(),
    ),
    GoRoute(
      path: '/HomeView',
      builder: (context, state) => const Home_view(),
    ),
    GoRoute(
      path: '/Bookdetils',
      builder: (context, state) => BlocProvider(
        create: (context) => SimilerBookCubitCubit(getIt.get<HomeRepoImpl>()),
        child: const BookDetailsView(),
      ),
    ),
    GoRoute(
      path: '/SearchView',
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
