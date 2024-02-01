import 'package:flutter/material.dart';
import 'package:uikitresponsive/widgets/custom_button.dart';
import 'package:uikitresponsive/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Customer name", hint: "Type Customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: "Customer email", hint: "Type Customer email"),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: "Item name", hint: "Type customer name")),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: "Item mount", hint: "USD"),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: "Add more details",
              backgroundColor: Colors.transparent,
              textColor: Color(0xFF4DB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              text: "Send Money",
              backgroundColor: Color(0xFF4DB7F2),
              textColor: Colors.white,
            ))
          ],
        )
      ],
    );
  }
}
