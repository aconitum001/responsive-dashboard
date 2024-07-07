import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) {
          return Padding(
            padding: EdgeInsets.only(left: index != 0 ? 8 : 0),
            child: CustomDot(isActive: currentPage == index ? true : false),
          );
        },
      ),
    );
  }
}
