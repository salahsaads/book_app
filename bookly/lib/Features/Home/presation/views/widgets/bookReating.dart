import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  BookRating({super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '4.8',
          style: Style.textStyle14,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          '(255)',
          style: Style.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
