import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.icon,
    required this.iconcolor,
    required this.backgroundColor,
    required this.arrowColor,
  });

  final String icon;
  final Color iconcolor, backgroundColor, arrowColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              icon,
              color: iconcolor,
            ),
          ),
        ),
        Icon(
          Icons.keyboard_arrow_right_rounded,
          color: arrowColor,
        )
      ],
    );
  }
}
