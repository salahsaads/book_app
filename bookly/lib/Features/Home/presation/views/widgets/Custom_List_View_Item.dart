import 'package:bookly/core/utils/assats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(AssatsData.testImage), fit: BoxFit.cover)),
      ),
    );
  }
}

