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
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Text("Sign in now",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Text("Please sign in to continue our app",
                style: TextStyle(fontSize: 16)),
            const Card(
                margin: EdgeInsets.only(
                    top: 44.0, bottom: 12.0, right: 20, left: 20),
                color: Colors.white70,
                child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintText: 'email',
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none))),
            const Card(
                margin: EdgeInsets.only(
                    top: 10.0, bottom: 12.0, right: 20, left: 20),
                color: Colors.white70,
                child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintText: 'password',
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none))),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Text("Forget Password?",
                        style: TextStyle(
                            fontSize: 16, color: Colors.deepOrangeAccent)))
              ],
            ),
            Padding(
                padding:
                    EdgeInsets.only(right: 44, left: 44, top: 40, bottom: 40),
                child: SizedBox(
                  width: 355,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text(
                      "Sing in",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.blueAccent)),
                  ),
                )),
            Container(
                margin: EdgeInsets.only(right: 44, left: 44, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(fontSize: 16)),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text("Sign up",
                          style: TextStyle(
                              fontSize: 16, color: Colors.deepOrangeAccent)),
                    ),
                  ],
                )),
            Text("Or connect", style: TextStyle(fontSize: 16)),
            Padding(
                padding: EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child:
                          Image(image: AssetImage("assets/image/facebook.png")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Image(image: AssetImage("assets/image/insta.png")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child:
                          Image(image: AssetImage("assets/image/twitter.png")),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
