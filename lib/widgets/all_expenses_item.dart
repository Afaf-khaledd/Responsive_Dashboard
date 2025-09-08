import 'package:flutter/material.dart';
import '../Models/all_expenses_item_model.dart';
import 'all_expenses_items_states.dart';

class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;
  final bool isActive;
  const AllExpensesItem({super.key, required this.itemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveAllExpensesItem(itemModel: itemModel) : InActiveAllExpensesItem(itemModel: itemModel);
  }
}