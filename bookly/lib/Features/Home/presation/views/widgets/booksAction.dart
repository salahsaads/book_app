import 'package:bookly/core/Widgets/Custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: Custom_Button(
            textColors: Colors.black,
            text: '19.99\$',
            background: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(10)),
          )),
          Expanded(
              child: Custom_Button(
            text: 'Free preview',
            textColors: Colors.white,
            background: const Color(0xffe67965),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(10)),
          ))
        ],
      ),
    );
  }
}
