import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../Models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel user;
  const UserInfoListTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(user.avatar),
          title: Text(user.name,style: AppStyles.styleSemiBold16,),
          subtitle: Text(user.email, style: AppStyles.styleRegular16,),
        ),
      ),
    );
  }
}
