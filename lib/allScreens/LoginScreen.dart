import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white60,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black),
                    ),
                  ],
                )),
            SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Enter Email", textAlign: TextAlign.left),
            ),
            SizedBox(
              height: 3.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: 50, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  icon: Icon(
                    Icons.email,
                  ),
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text("Password", textAlign: TextAlign.left),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: 50, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  icon: Icon(
                    Icons.remove_red_eye,
                  ),
                  labelStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 120),
              child: Text("Forgot Password?"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("–––––– or ––––––"),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.g_mobiledata),
                            Text(
                              "       Sign in with google",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                    SizedBox(height: 10),
                    RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.call),
                            Text("       Sign in with Number"),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
