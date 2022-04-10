// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripti/Widgets/button.dart';

class otpScreen extends StatefulWidget {
  const otpScreen({Key? key}) : super(key: key);

  @override
  State<otpScreen> createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {
  _voidAction() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                Text(
                  "Enter OTP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _otpbox(first: true, last: false),
                  _otpbox(first: true, last: false),
                  _otpbox(first: true, last: false),
                  _otpbox(first: true, last: false),
                ],
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Button("verify", Colors.yellow, Colors.black, _voidAction)
          ],
        ),
      ),
    );
  }
}

_otpbox({required bool first, last}) {
  return Material(
    child: Container(
      height: 75,
      child: AspectRatio(
        aspectRatio: 0.89,
        child: TextField(
          autofocus: true,
          onChanged: (value) {},
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            hintText: "*",
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.green),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      ),
    ),
  );
}
