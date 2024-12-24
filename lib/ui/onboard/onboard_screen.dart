import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

/*
* AssetImage('assets/image/onboard_1.png')
* 
* Image.asset(
            'assets/image/onboard_1.png',
            fit: BoxFit.cover,
          )
* */
class OnboardState extends State<OnboardWidgetState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
        ),
        Text("data")
      ],
    );
    ;
  }
}
