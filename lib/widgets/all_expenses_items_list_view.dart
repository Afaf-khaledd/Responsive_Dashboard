import 'package:flutter/material.dart';

import '../Models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {

  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(image: Assets.money, title: "Balance", date: "April 2022", amount: r"$20,129"),
    AllExpensesItemModel(image: Assets.income, title: "Income", date: "April 2022", amount: r"$20,129"),
    AllExpensesItemModel(image: Assets.expense, title: "Expenses", date: "April 2022", amount: r"$20,129"),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      //children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: (){
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: AllExpensesItem(itemModel: item, isActive: selectedIndex == index,),
              ),
            ),
          );
        }
        else{
          return Expanded(
            child: GestureDetector(
              onTap: (){
                  updateIndex(index);
                },
              child: AllExpensesItem(itemModel: item, isActive: selectedIndex == index,),
            ),
          );
        }
    }
    ).toList(),
    );
  }
  void updateIndex(int index){
    setState(() {
      if (selectedIndex != index) {
        selectedIndex = index;
      }
    });
  }
}
