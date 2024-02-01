import 'package:flutter/material.dart';
import 'package:uikitresponsive/views/Dashboard_mobile_layout.dart';
import 'package:uikitresponsive/views/adaptive_layout_widget.dart';
import 'package:uikitresponsive/views/dashboard_tablet_layout.dart';
import 'package:uikitresponsive/views/desktop_layout.dart';
import 'package:uikitresponsive/widgets/custom_drawer.dart';

class DashboardView extends StatefulWidget {
  DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Color(0xFF4EB7F2),
                ),
              ),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800 ? CustomDrawer() : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => DashboardMobileLayout(),
          tabletLayout: (context) => DashBoardTabletLayout(),
          desktopLayout: (context) => DesktopLayout()),
    );
  }
}
