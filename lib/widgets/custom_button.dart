import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  const CustomButton({super.key, required this.text, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 62,
      child: ElevatedButton(
          onPressed: (){},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: backgroundColor?? Colors.transparent,
        ),
          child: Text(text,style: AppStyles.styleSemiBold18.copyWith(color: backgroundColor != null ? Colors.white : Color(0xFF4EB7F2)),),
      ),
    );
  }
}
