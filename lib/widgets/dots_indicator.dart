import 'package:flutter/material.dart';

import 'custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  final int currentPageIndex;
  const DotsIndicator({super.key, required this.currentPageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CustomDotIndicator(isActive: index == currentPageIndex),
      )),
    );
  }
}
