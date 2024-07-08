import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.expensesModel,
  });

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
            iconcolor: const Color(0xff4EB7F2),
            backgroundColor: const Color(0xffFAFAFA),
            arrowColor: const Color(0xff064061),
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                expensesModel.title,
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                expensesModel.date,
                style: AppStyles.styleRegular14(context),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                expensesModel.balance,
                style: AppStyles.styleSemiBold24(context),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.expensesModel,
  });

  final AllExpensesModel expensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(
            icon: expensesModel.icon,
            backgroundColor: const Color(0xffFFFFFF).withOpacity(0.1),
            iconcolor: Colors.white,
            arrowColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                expensesModel.title,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                expensesModel.date,
                style: AppStyles.styleRegular14(context).copyWith(
                  color: const Color(0xffFAFAFA),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                expensesModel.balance,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}
