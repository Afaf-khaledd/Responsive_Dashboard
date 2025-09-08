import 'package:flutter/material.dart';

import '../Models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });
  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: Assets.dashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.myTransactions),
    DrawerItemModel(title: 'Statistics', image: Assets.stat),
    DrawerItemModel(title: 'Wallet Account', image: Assets.wallet2),
    DrawerItemModel(title: 'My Investments', image: Assets.myInvest),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(

        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(drawerItem: drawerItems[index], isActive: activeIndex == index,),
            ),
          );
        });
  }
}