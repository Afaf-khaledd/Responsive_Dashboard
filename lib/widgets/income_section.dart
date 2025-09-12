import 'package:flutter/material.dart';

import 'custom_background_container.dart';
import 'income_chart.dart';
import 'income_details.dart';
import 'income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          )
        ],
      ),
    );
  }
}
