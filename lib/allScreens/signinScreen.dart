import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

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
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.black),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Icon(Icons.arrow_drop_down_circle_outlined),
              ),
              SizedBox(height: 80),
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Ful Name',
                    icon: Icon(
                      Icons.man,
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
              SizedBox(
                height: 5.0,
              ),
              SizedBox(height: 3.0),
              Padding(
                padding: EdgeInsets.only(right: 50),
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
              SizedBox(height: 7.0),
              SizedBox(height: 7.0),
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: TextField(
                  obscureText: true,
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
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.yellow,
                      child: Text("Create an account"),
                    ),
                    SizedBox(height: 20),
                    Text('––––––– or ––––––––'),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                          color: Colors.white,
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.call),
                              Text(
                                "       Sign in with number",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                    ),
                    RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.g_mobiledata),
                            Text(
                              "        Sign up with google",
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          Text("have an account?"),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.purple),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
