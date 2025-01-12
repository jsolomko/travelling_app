main() {
  CustomButton('New btn');
  Screen().build();
}
class CustomButton extends CustomWidget {
  String title;

  CustomButton(this.title);

  onClick(Function block) {
    block();
  }
}

class User {
  onScreenTap(CustomWidget widget) {
    if (widget is CustomButton) {
      print("${widget.title} was clicked");
    }
  }
}

abstract class CustomWidget {}

class Screen {
  CustomButton? b;

  Screen({this.b});

  showData() {
    print('button ${b?.title} was clicked');
  }

  build() {
    b?.onClick(showData());
  }
}


