import 'package:flutter/cupertino.dart';

class OnBoardCarouselTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 44, left: 44, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Life is short and the world is wide",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
                "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
                style: TextStyle(fontSize: 16)),
            Image(image: AssetImage('assets/image/slide_button_1.png'))
          ],
        ));
  }
}