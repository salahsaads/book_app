import 'package:bookly/core/utils/assats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class Splach_View_body extends StatefulWidget {
  const Splach_View_body({super.key});

  @override
  State<Splach_View_body> createState() => _Splach_View_bodyState();
}

class _Splach_View_bodyState extends State<Splach_View_body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);

    animationController.forward();

    NanvToHome();
  }

  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(AssatsData.logo),
        ),
        const SizedBox(
          height: 10,
        ),
        SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  void NanvToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push('/HomeView');
    });
  }
}
