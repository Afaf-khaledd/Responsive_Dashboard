import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackgroundColor;
  final Color? imageColor;
  const AllExpensesItemHeader({super.key, required this.image, this.imageBackgroundColor, this.imageColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: imageBackgroundColor ?? Color(0xFFFAFAFA),
          child: SvgPicture.asset(image, width: 43,colorFilter: ColorFilter.mode(imageColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),),
        ),
        Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(Icons.arrow_back_ios_outlined, color: imageColor == null ? Color(0xFF064061) : Colors.white),
        ),
      ],
    );
  }
}
