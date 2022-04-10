import 'package:flutter/material.dart';
import 'package:tripti/Widgets/button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    voidAction() {
      Navigator.pushNamed(context, "signInScreen");
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Icon(Icons.add_business_rounded),
            ),
            SizedBox(
              height: 420,
            ),
            Container(
              child: Column(
                children: [
                  Button("Log in", Colors.white, Colors.black, voidAction),
                  SizedBox(height: 8.0),
                  Button("Sign In", Colors.white, Colors.black, voidAction),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "signInScreen");
                      },
                      child: Text("press")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
