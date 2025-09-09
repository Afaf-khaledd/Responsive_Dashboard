import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomTextHeader extends StatelessWidget {
  final String title;
  const CustomTextHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppStyles.styleMedium16,);
  }
}
