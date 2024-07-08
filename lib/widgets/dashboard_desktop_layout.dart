import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_history_section.dart';
import 'package:responsive_dashboard/widgets/primary_dashboard_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 8,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: PrimaryDashBoardSection(),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 24, right: 20),
                        child: Column(
                          children: [
                            MyCardsAndTransactionHistory(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: IncomeSection()),
                            SizedBox(
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
