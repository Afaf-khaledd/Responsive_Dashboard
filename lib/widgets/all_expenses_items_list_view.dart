import 'package:flutter/material.dart';

import '../Models/all_expenses_item_model.dart';
import '../utils/app_images.dart';
import 'all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: Assets.money,
        title: "Balance",
        date: "April 2022",
        amount: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.income,
        title: "Income",
        date: "April 2022",
        amount: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.expense,
        title: "Expenses",
        date: "April 2022",
        amount: r"$20,129"),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: items[0],
              isActive: selectedIndex == 0,
            ),
          ),
        ),
        SizedBox(width: 11,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemModel: items[1],
              isActive: selectedIndex == 1,
            ),
          ),
        ),
        SizedBox(width: 11,),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              itemModel: items[2],
              isActive: selectedIndex == 2,
            ),
          ),
        ),
      ],
    );

    /*return Row( // bad padding
      //children: items.map((e) => Expanded(child: AllExpensesItem(itemModel: e))).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12.0 : 0),
              child: AllExpensesItem(
                itemModel: item,
                isActive: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );*/
  }

  void updateIndex(int index) {
    setState(() {
      if (selectedIndex != index) {
        selectedIndex = index;
      }
    });
  }
}
