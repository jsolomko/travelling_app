import 'package:flutter/cupertino.dart';

import '../onboard_view_model.dart';

class OnBoardMainImage extends StatelessWidget {
  OnboardViewModel viewModel;

  OnBoardMainImage({required this.viewModel});

  @override
  Widget build(BuildContext context) {

    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, child) {
          return Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0), // Скругленные углы
              child: Container(
                height: 444,
                child: Image(
                  image: AssetImage(viewModel.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}
