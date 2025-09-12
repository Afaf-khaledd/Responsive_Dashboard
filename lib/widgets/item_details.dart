import 'package:flutter/material.dart';

import '../Models/income_model.dart';
import '../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  final IncomeModel incomeModel;

  const ItemDetails({super.key, required this.incomeModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
        ShapeDecoration(shape: OvalBorder(), color: incomeModel.color),
      ),
      title: Text(
        incomeModel.title,
        style: AppStyles.styleRegular16(context).copyWith(color: Color(0xFF064061)),
      ),
      trailing: Text(
        incomeModel.percentage,
        style: AppStyles.styleMedium16(context).copyWith(color: Color(0xFF208CC8)),
      ),
    );
  }
}