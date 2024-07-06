import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/widgets/inactive_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.expensesModel,
    required this.isSelected,
  });

  final AllExpensesModel expensesModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: isSelected
          ? ActiveAllExpensesItem(
              key: ValueKey('active_${expensesModel.title}'),
              expensesModel: expensesModel,
            )
          : InActiveAllExpensesItem(
              key: ValueKey('inactive_${expensesModel.title}'),
              expensesModel: expensesModel,
            ),
    );
  }
}
