import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikitresponsive/models/drawer_item_model.dart';
import 'package:uikitresponsive/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: Text(
        item.title,
        style: AppStyles.styleSemiBold16(context),
      ),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
