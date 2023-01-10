import 'package:flutter/material.dart';

import '../constans/app_colors.dart';
import '../constans/app_text_syle.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text; 
  final dynamic onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor:AppColors.ButtonColor,
      onTap: onTap, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
            color: AppColors.IconColor,
          ),
          const SizedBox( width:8), 
          Text(
            text,
            style:AppTextStyles.CardTextStyles
          ),
        ],
      ),
    );
  }
}
