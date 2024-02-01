import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/item_details_model.dart';
import 'package:uikitresponsive/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static final items = [
    ItemDataModel(
        color: Color(0xff208CC8), title: "Design service", value: "40%"),
    ItemDataModel(
        color: Color(0xff4EB7F2), title: "Design product", value: "25%"),
    ItemDataModel(
        color: Color(0xff064061), title: "Product royalti", value: "20%"),
    ItemDataModel(color: Color(0xffE2DECD), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemDetails(dataModel: items[index]);
        });
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.dataModel});
  final ItemDataModel dataModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 8,
        height: 8,
        decoration: ShapeDecoration(
          color: dataModel.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        dataModel.title,
        style: AppStyles.styleRegular14(context)
            .copyWith(color: Color(0xFF064060)),
      ),
      trailing: Text(dataModel.value,
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Color(0xFF208CC8))),
    );
  }
}
