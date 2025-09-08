import 'package:flutter/material.dart';
import '../Models/drawer_item_model.dart';
import 'drawer_item_states.dart';

class DrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItem;
  final bool isActive;

  const DrawerItem(
      {super.key, required this.drawerItem, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItem: drawerItem,
          )
        : InActiveDrawerItem(drawerItem: drawerItem);
  }
}
