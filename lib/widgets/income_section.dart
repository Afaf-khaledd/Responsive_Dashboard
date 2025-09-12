import 'package:flutter/material.dart';
import 'custom_background_container.dart';
import 'income_header.dart';
import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16,),
          IncomeSectionBody()
        ],
      ),
    );
  }
}