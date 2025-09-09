import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../Models/user_info_model.dart';
import '../utils/app_images.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        avatar: Assets.avatar1),
    UserInfoModel(
        name: 'Josua Nunito',
        email: 'Josh Nunito@gmail.com',
        avatar: Assets.avatar2),
    UserInfoModel(
        name: 'Madrani Andi',
        email: 'Madraniadi20@gmail',
        avatar: Assets.avatar1),
  ];

  @override
  Widget build(BuildContext context) {
    // if many items, use ListView.builder else Row:
    /*return SizedBox(
      height: 80, // same height of child if exist or guise by content
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return IntrinsicWidth( // dynamic width based on content of child but without animation!
              child: UserInfoListTile(
                user: items[index],
              ),
            );
          }),
    );*/
    return SingleChildScrollView( // shift + mouse wheel to scroll
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(user: e,))).toList(),
      ),
    );
  }
}
