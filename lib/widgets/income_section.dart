import 'package:flutter/material.dart';
import 'package:uikitresponsive/utils/app_styles.dart';
import 'package:uikitresponsive/widgets/custom_bg_container.dart';
import 'package:uikitresponsive/widgets/income_chart.dart';
import 'package:uikitresponsive/widgets/income_details.dart';
import 'package:uikitresponsive/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        SizedBox(
          height: 16,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetails())
          ],
        )
      ],
    ));
  }
}
