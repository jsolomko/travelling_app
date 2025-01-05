import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SingInState();
}

class SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign in now"),
            Text("Please sign in to continue our app"),
            const TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: 'email',
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none)),
            const TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: 'password',
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none)),
            ElevatedButton(onPressed: () => {}, child: Text("Sing IN")),
            TextField(),
            Text("Forget Password?"),
            Text("Don't have an account?"),
            Text("Or connect")
          ],
        ),
      ),
    );
  }


}
