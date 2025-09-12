import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../utils/app_images.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 220,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,image: AssetImage(Assets.cardBackground)),
          color: Color(0xFF4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 31, right: 42, top: 15),
              title: Text("Name card", style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
              subtitle: Text("Syah Bandi", style: AppStyles.styleMedium20(context),),
              trailing: Icon(Icons.image_outlined)
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("0918 8124 0042 8129", style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),),
                  Text("12/20 - 124",style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
                ],
              ),
            ),
            Flexible(child: SizedBox(height: 54 - 28,),)
          ],
        ),
      ),
    );
  }
}
