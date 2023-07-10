import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basis/views/home/home_content_desktop.dart';
import 'package:the_basis/views/home/home_content_mobile.dart';
import 'package:the_basis/views/widgets/navigation_bar/navigation_bar.dart';
import 'package:the_basis/views/widgets/navigation_drawer/navigation_drawer.dart';

import '../widgets/center_view/center_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder:(context, sizingInformation){
        return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile? NavigationDrawer(): null,
          backgroundColor: Colors.white,
          body: CenterView(
            child: Column(
              children: [
                NavigationBars(),
                Expanded(
                    child: ScreenTypeLayout.builder(
                      mobile: (context) => const HomeContentMobile(),

                      desktop: (context) => const HomeContentDesktop(),
                    )
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
