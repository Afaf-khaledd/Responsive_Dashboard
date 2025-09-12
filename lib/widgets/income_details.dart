import 'dart:developer';

import 'package:flutter/material.dart';

import '../Models/income_model.dart';
import 'item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeModel(
        title: "Design service", percentage: "%40", color: Color(0xFF208CC8)),
    IncomeModel(
        title: "Design product", percentage: "%25", color: Color(0xFF4EB7F2)),
    IncomeModel(
        title: "Product royalti", percentage: "%20", color: Color(0xFF064061)),
    IncomeModel(title: "Other", percentage: "%22", color: Color(0xFFE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: items.map((e) => ItemDetails(incomeModel: e,)).toList(),
    );
    /*return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemDetails(
            incomeModel: items[index],
          );
        });*/
  }
}