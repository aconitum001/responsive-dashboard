import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction_list_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionModel(
      title: "Cash Withdrawal",
      date: "13 April 2022",
      amount: r"$20,129",
      isWithDrawal: true,
    ),
    TransactionModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$2,000",
      isWithDrawal: false,
    ),
    TransactionModel(
      title: "Juni Mobile App project",
      date: "13 April 2022",
      amount: r"$20,129",
      isWithDrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: index != 0 ? 6 : 0),
          child: TransactionListItem(transactionModel: items[index]),
        );
      },
    );
  }
}
