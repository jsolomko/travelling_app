import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class OnboardViewModel extends ChangeNotifier {
  List<String> _titleList = [
    "Life is short and the world is wide",
    "It's a big world to out there go explore",
    "People don't take trips, trips take people"
  ];
  List<String> _subtitleList = [
    "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
    "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
    "To get the best of your adventure you just need to leave and go where you like. we are waiting for you"
  ];

  List<String> _imagePathList = [
    "assets/image/onboard_1.png",
    'assets/image/onboard_2.png',
    'assets/image/onboard_3.png'
  ];

  List<String> _buttonTextList = ['Get Started', "Next", "Next"];

  String title = 'Life is short and the world is wide';
  String subtitle =
      'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the worl';
  String imgPath = 'assets/image/onboard_1.png';
  String buttonText = 'Get Started';

  int imageIndex = 0;
  bool goHome = false;

  goForward() {
    imageIndex++;
    if (imageIndex < 3) {
      title = _titleList[imageIndex];
      subtitle = _subtitleList[imageIndex];
      imgPath = _imagePathList[imageIndex];
      buttonText = _buttonTextList[imageIndex];
    } else {
      goSignInScreen();
    }
    print("index $imageIndex");
    notifyListeners();
  }

  goSignInScreen() {
    print('goSignInScreen');
    imageIndex = 0;
    goHome = true;
  }
}
