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
          SizedBox(height: 20,),
          FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown,child: Text(itemModel.title,style: AppStyles.styleSemiBold16(context),)),
          SizedBox(height: 8,),
          FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown,child: Text(itemModel.date, style: AppStyles.styleRegular14(context),)),
          SizedBox(height: 16,),
          FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown,child: Text(itemModel.amount, style: AppStyles.styleSemiBold24(context),)),
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
          side: const BorderSide(width: 1, color: Color(0xFF4EB7F2)),

        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image,imageBackgroundColor: Color.fromRGBO(255, 255, 255, 0.1), imageColor: Colors.white,),
          SizedBox(height: 20,),
          FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown,child: Text(itemModel.title,style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),)),
          SizedBox(height: 8,),
          FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown,child: Text(itemModel.date, style: AppStyles.styleRegular14(context).copyWith(color: Color(0xFFFAFAFA)),)),
          SizedBox(height: 16,),
          FittedBox(alignment: AlignmentDirectional.centerStart, fit: BoxFit.scaleDown,child: Text(itemModel.amount, style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),)),
        ],
      ),
    );
  }
}
