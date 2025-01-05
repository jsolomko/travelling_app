import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SingIpState();
}

class SingIpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign up in now"),
            Text("Please fill the details and create account"),
            TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: 'name',
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none)),
            TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: 'email',
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none)),
            TextField(
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    hintText: 'password',
                    enabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none)),
            Text("Password must be 8 character"),
            ElevatedButton(onPressed: () => {}, child: Text("Sing Up")),
            Text("Already have an account"),
            Text("Or connect")
          ],
        ),
      ),
    );
  }
}
