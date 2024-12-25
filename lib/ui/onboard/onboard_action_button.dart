import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardActionButton extends StatelessWidget {
  const OnBoardActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 44, left: 44, top: 50),
        child: SizedBox(
          width: 355,
          height: 56,
          child: ElevatedButton(
            onPressed: () => {},
            child: Text("Text"),
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
          ),
        ));
  }
}