import 'package:flutter/material.dart';
import 'package:the_basis/views/widgets/navigation_bar/NavBar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 30, top: 60),
    child: Row(children: <Widget>[
     Icon(icon),
      SizedBox(width: 30,),
      NavBarItem(title),
    ],

    ),);
  }
}
