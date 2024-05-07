import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  Custom_Button(
      {super.key,
      required this.background,
      this.borderRadius,
      required this.text, required this.textColors});
  final String text;
  final Color textColors;
  final Color background;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: background,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        onPressed: () {},
        child: Text(
          '$text',
          style: Style.textStyle20
              .copyWith(color: textColors, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
