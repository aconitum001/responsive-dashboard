import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/expenses_menu.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  static const List<Map<String, String>> incomeMenuItems = [
    {"label": "Daily", "value": "Daily"},
    {"label": "Weekly", "value": "Weekly"},
    {"label": "Monthly", "value": "Monthy"},
    {"label": "Yearly", "value": "Yearly"},
  ];

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Income",
                style: AppStyles.styleSemiBold20,
              ),
              ExpensesMenu(
                menuItems: incomeMenuItems,
              )
            ],
          )
        ],
      ),
    );
  }
}
