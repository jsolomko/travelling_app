import 'package:flutter/material.dart';
import 'package:travelling_app/ui/onboard_view_model.dart';

import '../sing_in/sign_in.dart';
import 'onboard_action_button.dart';
import 'onboard_carousel_text.dart';
import 'onboard_main_image.dart';

class OnboardWidget extends StatelessWidget {
  OnboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardWidgetState(),
    );
  }
}

class OnboardWidgetState extends StatefulWidget {
  OnboardWidgetState({super.key});

  final OnboardViewModel viewModel = OnboardViewModel();

  @override
  State<OnboardWidgetState> createState() => OnboardState();
}

class OnboardState extends State<OnboardWidgetState> {
  var didP = true;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didP, _) async {
          if (didP) Navigator.of(context).pop(true);
        },
        child: Column(
          children: [
            OnBoardMainImage(viewModel: widget.viewModel),
            OnBoardCarouselTextWidget(viewModel: widget.viewModel),
            OnBoardActionButton(viewModel: widget.viewModel)
          ],
        ));
  }

}
