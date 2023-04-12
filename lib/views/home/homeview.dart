import 'package:flutter/material.dart';
import 'package:the_basis/views/widgets/course_details_widget/course_details.dart';
import 'package:the_basis/views/widgets/navigation_bar/navigation_bar.dart';

import '../widgets/call_to_action/call_to_action.dart';
import '../widgets/center_view/center_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenterView(
        child: Column(
          children: [
            NavigationBars(),
            Expanded(
                child: Row(
              children:  <Widget>[
                CourseDetails(),
                Expanded(child: Center(child: CallToAction('Join Course'),)
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
