import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/all_expenses_item_model.dart';
import 'package:uikitresponsive/utils/app_styles.dart';
import 'package:uikitresponsive/widgets/all_expenses_item_header.dart';

class inActiveItem extends StatelessWidget {
  const inActiveItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 36,
          ),
          Text(itemModel.title, style: AppStyles.styleSemiBold16(context)),
          SizedBox(
            height: 8,
          ),
          Text(itemModel.date, style: AppStyles.styleRegular14(context)),
          SizedBox(
            height: 16,
          ),
          Text(itemModel.price, style: AppStyles.styleSemiBold24(context))
        ],
      ),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackround: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: itemModel.image,
          ),
          const SizedBox(
            height: 36,
          ),
          Text(itemModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: Colors.white)),
          SizedBox(
            height: 8,
          ),
          Text(itemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: Color(0xFFFAFAFA),
              )),
          SizedBox(
            height: 16,
          ),
          Text(itemModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
