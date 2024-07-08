import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      drawer: width < SizeConfig.tabletLayout ? const CustomDrawer() : null,
      appBar: width < SizeConfig.tabletLayout
          ? AppBar(
              backgroundColor: const Color(0xff4EB7F2),
              title: Text(
                "DashBoard",
                style: AppStyles.styleMedium20(context)
                    .copyWith(color: Colors.white),
              ),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
