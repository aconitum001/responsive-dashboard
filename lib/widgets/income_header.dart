import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/expenses_menu.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
    required this.incomeMenuItems,
  });

  final List<Map<String, String>> incomeMenuItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        ExpensesMenu(
          menuItems: incomeMenuItems,
        ),
      ],
    );
  }
}
