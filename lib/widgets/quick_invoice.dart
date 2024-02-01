import 'package:flutter/material.dart';
import 'package:uikitresponsive/utils/app_styles.dart';
import 'package:uikitresponsive/widgets/custom_bg_container.dart';
import 'package:uikitresponsive/widgets/custom_text_field.dart';
import 'package:uikitresponsive/widgets/latest_transaction.dart';
import 'package:uikitresponsive/widgets/quick_invoice_form.dart';
import 'package:uikitresponsive/widgets/quick_invoice_header.dart';
import 'package:uikitresponsive/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xFFAAAAAA),
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
