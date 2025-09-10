import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_history_item.dart';

import '../Models/transaction_history_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionHistoryModel(title: "Cash Withdrawal", amount: "\$20,129", date: "13 Apr, 2022 ", isIncome: false),
    TransactionHistoryModel(title: "Landing Page project", amount: "\$2,000", date: "13 Apr, 2022 at 3:30 PM", isIncome: true),
    TransactionHistoryModel(title: "Juni Mobile App project", amount: "\$20,129", date: "13 Apr, 2022 at 3:30 PM", isIncome: true),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          return TransactionHistoryItem(transactionHistoryModel: items[index],);
    }, separatorBuilder: (context, index) => const SizedBox(height: 12));
  }
}
