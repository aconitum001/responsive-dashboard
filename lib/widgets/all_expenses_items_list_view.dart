import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;
  List<AllExpensesModel> items = const [
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
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: index == 1 ? 12 : 0,
            ),
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensesItem(
                expensesModel: item,
                isSelected: selectedIndex == index ? true : false,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }
}
