import 'package:bookly/Features/Home/presation/views/Home_view.dart';
import 'package:bookly/Features/Home/presation/views/book_details_view.dart';
import 'package:bookly/Features/splash/presntion/views/splash_view.dart';
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
      builder: (context, state) => const BookDetailsView(),
    ),
  ]);
}
