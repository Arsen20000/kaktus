
import 'package:flutter/material.dart';

import '../constans/app_text_syle.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
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
      highlightColor: Colors.blue, // splash color
      onTap: onTap, // button pressed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 28,
            color: Color.fromARGB(255, 2, 152, 7),
          ),
          const SizedBox( width: 40), // icon
          Text(
            text,
            style:AppTextStyles.DrawerTextStyle,
          ), // text
        ],
      ),
    );
  }
}