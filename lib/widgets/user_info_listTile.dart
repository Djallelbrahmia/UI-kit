import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uikitresponsive/models/user_info_model.dart';
import 'package:uikitresponsive/utils/app-images.dart';
import 'package:uikitresponsive/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.model});
  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0XFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            model.image,
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              model.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text(model.subTitle,
                  style: AppStyles.styleRegular12(context))),
        ),
      ),
    );
  }
}
