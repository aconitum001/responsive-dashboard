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
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(
              height: 24,
            ),
            QuickInvoice(),
          ],
        ),
      ),
    );
  }
}
