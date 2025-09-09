import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer_item_states.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../Models/user_info_model.dart';
import '../utils/app_images.dart';
import 'drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              user: UserInfoModel(name: 'Lekan Okeowo', email: 'demo@gmail.com', avatar: Assets.avatar1),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                //Spacer(),
                Expanded(child: SizedBox(height: 20,)),
                InActiveDrawerItem(
                    drawerItem: DrawerItemModel(
                        title: "Setting system", image: Assets.setting2)),
                SizedBox(
                  height: 10,
                ),
                InActiveDrawerItem(
                    drawerItem: DrawerItemModel(
                        title: "Logout account", image: Assets.logout)),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
