import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

import 'custom_background_container.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardSection(),
          Divider(height: 40,color: Color(0xFFF1F1F1),),
          TransactionHistory(),
        ],
      ),
    );
  }
}
