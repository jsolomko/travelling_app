import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/ui/onboard_view_model.dart';

class OnBoardActionButton extends StatelessWidget {
  OnboardViewModel viewModel;

  OnBoardActionButton({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return Padding(
            padding: EdgeInsets.only(right: 44, left: 44, top: 50),
            child: SizedBox(
              width: 355,
              height: 56,
              child: ElevatedButton(
                onPressed: () => {viewModel.goForward()},
                child: Text(viewModel.buttonText),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
              ),
            ));
      },
    );
  }
}
