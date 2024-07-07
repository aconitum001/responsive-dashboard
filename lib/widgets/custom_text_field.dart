import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: createBorder(),
        enabledBorder: createBorder(),
        focusedBorder: createBorder(),
        hintText: "Type customer name",
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xffAAAAAA),
        ),
      ),
    );
  }

  InputBorder createBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }
}
