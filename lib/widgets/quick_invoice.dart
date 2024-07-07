import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_widget.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransactionWidget(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
