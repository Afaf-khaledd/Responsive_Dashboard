import 'package:flutter/material.dart';

import '../Models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image,),
          SizedBox(height: 34,),
          Text(itemModel.title,style: AppStyles.styleSemiBold16,),
          SizedBox(height: 8,),
          Text(itemModel.date, style: AppStyles.styleRegular14,),
          SizedBox(height: 16,),
          Text(itemModel.amount, style: AppStyles.styleSemiBold24,),
        ],
      ),
    );
  }
}
class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image,imageBackgroundColor: Color.fromRGBO(255, 255, 255, 0.1), imageColor: Colors.white,),
          SizedBox(height: 34,),
          Text(itemModel.title,style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),),
          SizedBox(height: 8,),
          Text(itemModel.date, style: AppStyles.styleRegular14.copyWith(color: Color(0xFFFAFAFA)),),
          SizedBox(height: 16,),
          Text(itemModel.amount, style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),),
        ],
      ),
    );
  }
}
