import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../Models/transaction_history_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  final TransactionHistoryModel transactionHistoryModel;
  const TransactionHistoryItem({super.key, required this.transactionHistoryModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transactionHistoryModel.title, style: AppStyles.styleSemiBold16,),
        subtitle: Text(transactionHistoryModel.date, style: AppStyles.styleRegular16.copyWith(color: Color(0xFFAAAAAA)),),
        trailing: Text(transactionHistoryModel.amount,style: AppStyles.styleSemiBold20.copyWith(color: transactionHistoryModel.isIncome ? Color(0xFF7DD97B):Color(0xFFF3735E)),),
      ),
      /*child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(transactionHistoryModel.title, style: AppStyles.styleSemiBold16,),
              SizedBox(height: 7,),
              Text(transactionHistoryModel.date, style: AppStyles.styleRegular16.copyWith(color: Color(0xFFAAAAAA)),),
            ],
          ),
          Text(transactionHistoryModel.amount,style: AppStyles.styleSemiBold20.copyWith(color: transactionHistoryModel.isIncome ? Color(0xFF7DD97B):Color(0xFFF3735E)),),
        ],
      ),*/
    );
  }
}
