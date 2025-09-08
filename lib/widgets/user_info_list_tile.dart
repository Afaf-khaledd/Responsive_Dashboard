import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final String name, email, avatar;
  const UserInfoListTile({super.key, required this.name, required this.email, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(avatar),
        title: Text(name,style: AppStyles.styleSemiBold16,),
        subtitle: Text(email, style: AppStyles.styleRegular16,),
      ),
    );
  }
}
