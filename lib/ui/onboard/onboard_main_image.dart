import 'package:flutter/cupertino.dart';

class OnBoardMainImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0), // Скругленные углы
        child: Container(
          height: 444,
          child: Image(
            image: AssetImage('assets/image/onboard_1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}