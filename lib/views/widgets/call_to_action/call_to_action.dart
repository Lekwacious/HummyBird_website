import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basis/views/widgets/call_to_action/call_to-action_tablet.dart';
import 'package:the_basis/views/widgets/call_to_action/call_to_action_mobile.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      desktop: CallToActionTablet(title),
      tablet: CallToActionTablet(title),
    );
  }
}
