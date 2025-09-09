import 'package:flutter/material.dart';

import 'custom_text_field.dart';
import 'custom_text_header.dart';

class TitleTextField extends StatelessWidget {
  final String title, hint;
  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextHeader(title: title,),
        SizedBox(height: 12,),
        CustomTextField(hint: hint,),
      ],
    );
  }
}
