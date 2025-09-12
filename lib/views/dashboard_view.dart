import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import '../widgets/adaptive_layout_widget.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    //SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width > SizeConfig.tabletWidth ? null : AppBar(
        leading: IconButton(icon: Icon(Icons.menu_rounded,), onPressed: (){
          scaffoldKey.currentState!.openDrawer();
        },),
        elevation: 0,
        backgroundColor: Color(0xFFFAFAFA),
      ),
      drawer: MediaQuery.sizeOf(context).width > SizeConfig.tabletWidth ? null : CustomDrawer(),
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}