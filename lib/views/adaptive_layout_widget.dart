import 'package:flutter/material.dart';
import 'package:uikitresponsive/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > SizeConfig.tabletBp &&
          constrains.maxWidth <= SizeConfig.desktopBp) {
        return tabletLayout(context);
      } else if (constrains.maxWidth > SizeConfig.desktopBp) {
        return desktopLayout(context);
      } else {
        return mobileLayout(context);
      }
    });
  }
}
