import 'package:flutter/material.dart';
import 'package:the_basis/views/widgets/call_to_action/call_to_action.dart';
import 'package:the_basis/views/widgets/course_details_widget/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(height: 100,),
        CallToAction("Join Course"),
      ],
    );
  }
}
