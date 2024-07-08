import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class PrimaryDashBoardSection extends StatelessWidget {
  const PrimaryDashBoardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 24, left: 24, top: 24),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
