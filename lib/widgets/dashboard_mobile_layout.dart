import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_history_section.dart';
import 'package:responsive_dashboard/widgets/primary_dashboard_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PrimaryDashBoardSection(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MyCardsAndTransactionHistory(),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: IncomeSection(),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
