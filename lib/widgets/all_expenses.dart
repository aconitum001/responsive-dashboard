import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  static const List<AllExpensesModel> items = [
    AllExpensesModel(
      icon: Assets.assetsBalanceIcon,
      date: "April 2022",
      title: "Balance",
      balance: "\$20,129",
    ),
    AllExpensesModel(
      icon: Assets.assetsIncomeIcon,
      date: "April 2022",
      title: "Income",
      balance: "\$20,129",
    ),
    AllExpensesModel(
      icon: Assets.assetsExpenseIcon,
      date: "April 2022",
      title: "Expenses",
      balance: "\$20,129",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const AllExpansesHeader(),
          const SizedBox(
            height: 16,
          ),
          Row(
            // children: items.map((e) {
            //   return Expanded(
            //     child: AllExpensesItem(expensesModel: e),
            //   );
            // }).toList(),
            children: items.asMap().entries.map((e) {
              int index = e.key;
              var item = e.value;
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: index == 1 ? 12 : 0,
                  ),
                  child: AllExpensesItem(
                    expensesModel: item,
                    isSelected: true,
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
