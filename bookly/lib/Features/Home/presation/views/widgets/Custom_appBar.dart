import 'package:bookly/core/utils/assats.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Custom_appBar extends StatelessWidget {
  const Custom_appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AssatsData.logo,
            height: 18,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push('/SearchView');
              },
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ))
        ],
      ),
    );
  }
}
