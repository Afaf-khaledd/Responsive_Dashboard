import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobileLayout, required this.desktopLayout, required this.tabletLayout, });

  final WidgetBuilder mobileLayout, desktopLayout, tabletLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints)  {
      if (constraints.maxWidth < SizeConfig.tabletWidth) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.desktopWidth) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
