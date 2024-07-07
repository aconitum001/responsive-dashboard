import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
  });

  final Color backgroundColor, textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.styleSemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
