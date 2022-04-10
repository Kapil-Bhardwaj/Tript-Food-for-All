import 'package:flutter/material.dart';
import 'package:tripti/Widgets/button.dart';

class signInWithNo extends StatelessWidget {
  _voidAction() {}
  const signInWithNo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PhoneController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  Text(
                    "Enter your\nmobile number",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black),
                  ),
                ],
              )),
          SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.only(right: 50),
            child: TextField(
              controller: PhoneController,
              decoration: InputDecoration(
                hintText: 'Phone Number',
                icon: Icon(
                  Icons.call,
                ),
                labelStyle: TextStyle(color: Colors.grey),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
              ),
            ),
          ),
          SizedBox(height: 300),
          Button("    send OTP   ", Colors.yellow, Colors.black, _voidAction)
        ],
      ),
    );
  }
}
