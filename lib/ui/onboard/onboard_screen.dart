import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'onboard_action_button.dart';
import 'onboard_carousel_text.dart';
import 'onboard_main_image.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardWidgetState(),
    );
  }
}

class OnboardWidgetState extends StatefulWidget {
  const OnboardWidgetState({super.key});

  @override
  State<OnboardWidgetState> createState() => OnboardState();
}

class OnboardState extends State<OnboardWidgetState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardMainImage(),
        OnBoardCarouselTextWidget(),
        OnBoardActionButton()
      ],
    );
  }
}
