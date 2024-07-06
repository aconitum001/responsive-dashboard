import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpansesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItem(
            expensesModel: AllExpensesModel(
              icon: Assets.assetsIncomeIcon,
              date: "April 2022",
              title: "Income",
              balance: "\$20,129",
            ),
          )
        ],
      ),
    );
  }
}
