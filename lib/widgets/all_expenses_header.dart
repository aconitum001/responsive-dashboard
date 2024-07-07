import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/expenses_menu.dart';

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({
    super.key,
  });

  static const List<Map<String, String>> expensesMenuItems = [
    {"label": "Daily", "value": "Daily"},
    {"label": "Weekly", "value": "Weekly"},
    {"label": "Monthly", "value": "Monthy"},
    {"label": "Yearly", "value": "Yearly"},
  ];

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        ExpensesMenu(
          menuItems: expensesMenuItems,
        ),
      ],
    );
  }
}
