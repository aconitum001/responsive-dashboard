import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.expensesModel});

  final AllExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFF1F1F1),
        ),
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(
            icon: expensesModel.icon,
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                expensesModel.title,
                style: AppStyles.styleMedium16,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                expensesModel.date,
                style: AppStyles.styleRegular14,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                expensesModel.balance,
                style: AppStyles.styleSemiBold24,
              )
            ],
          )
        ],
      ),
    );
  }
}
