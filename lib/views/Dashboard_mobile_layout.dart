import 'package:flutter/material.dart';
import 'package:uikitresponsive/widgets/all_expenses_and_invoice_section.dart';
import 'package:uikitresponsive/widgets/income_section.dart';
import 'package:uikitresponsive/widgets/mycard_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AlLExpensesAndInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
