import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Models/drawer_item_model.dart';
import '../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: Text(drawerItem.title, style: AppStyles.styleRegular16,),
    );
  }
}
class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItem,
  });

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: Text(drawerItem.title, style: AppStyles.styleBold16,),
      trailing: Container(
        width: 3.27,
        color: Color(0xFF4EB7F2),
      ),
    );
  }
}