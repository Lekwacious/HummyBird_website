import 'package:flutter/material.dart';
import 'package:the_basis/views/widgets/navigation_drawer/drawer_item.dart';
import 'package:the_basis/views/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16)
        ]
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem("Episodes", Icons.videocam),
          DrawerItem("About", Icons.help)
        ],
      ),
    );
  }
}
