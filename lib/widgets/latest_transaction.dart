import 'package:flutter/material.dart';
import 'custom_text_header.dart';
import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextHeader(title: "Latest Transaction",),
        SizedBox(height: 16,),
        LatestTransactionListView(),
      ],
    );
  }
}
