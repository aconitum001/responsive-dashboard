import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/primary_dashboard_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        const Expanded(
          flex: 6,
          child: PrimaryDashBoardSection(),
        ),
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
