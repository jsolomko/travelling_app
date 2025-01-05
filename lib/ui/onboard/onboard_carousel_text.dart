import 'package:flutter/cupertino.dart';

import '../onboard_view_model.dart';

class OnBoardCarouselTextWidget extends StatelessWidget {
  OnboardViewModel viewModel;

  OnBoardCarouselTextWidget({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return Padding(
              padding: EdgeInsets.only(right: 44, left: 44, top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(viewModel.subtitle, style: TextStyle(fontSize: 16)),
                  Image(image: AssetImage('assets/image/slide_button_1.png'))
                ],
              ));
        });
    ;
  }
}
