import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/all_expenses_item_model.dart';
import 'package:uikitresponsive/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(itemModel: itemModel)
        : inActiveItem(itemModel: itemModel);
  }
}
