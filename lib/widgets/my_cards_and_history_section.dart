import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list_view.dart';

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyCardSection(),
          const Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          const TransactionHistory(),
          const SizedBox(
            height: 20,
          ),
          Text(
            "13 April 2022",
            style: AppStyles.styleMedium16.copyWith(
              color: const Color(0xffAAAAAA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const TransactionHistoryListView()
        ],
      ),
    );
  }
}
