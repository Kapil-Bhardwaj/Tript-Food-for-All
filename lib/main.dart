import 'package:flutter/material.dart';
import 'package:tripti/allScreens/ChatScreen.dart';
import 'package:tripti/allScreens/DonateScreen.dart';
import 'package:tripti/allScreens/LoginScreen.dart';
import 'package:tripti/allScreens/QualityDahboard2.dart';
import 'package:tripti/allScreens/Quality_Dahboard_1.dart';
import 'package:tripti/allScreens/dashboard.dart';
import 'package:tripti/allScreens/donarScreen.dart';
import 'package:tripti/allScreens/emergencyFoodScreen.dart';
import 'package:tripti/allScreens/enterMobileNo.dart';
import 'package:tripti/allScreens/firstScreen.dart';
import 'package:tripti/allScreens/homeScreen.dart';
import 'package:tripti/allScreens/otpScreen.dart';
import 'package:tripti/allScreens/recieverScreen.dart';
import 'package:tripti/allScreens/signinScreen.dart';
import 'package:tripti/nv.dart';
import './allScreens/mainScreen.dart';
import 'allScreens/langarupdateScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: "firstScreen",
      routes: {
        "firstScreen": (context) => FirstScreen(),
        "signInScreen": (context) => SigninScreen(),
        "mainScreen": (context) => mainScreen(),
        "loginScreen": (context) => LoginScreen(),
        "Verification": (context) => signInWithNo(),
        "otp": (context) => otpScreen(),
        "Donar/Reciever": (context) => mainScreen(),
        "Donar": (context) => Donar(),
        "homeScreen": (context) => MyyApp(),
        "LungerUpdate": (context) => LangerUpdate(),
        "EmergencyFood": (context) => EmergencyFoodScreen(),
        "Dashboard": (context) => Dashboard(),
        "Quality_Dahboard1": (context) => QualityDashboard1(),
        "Quality_Dahboard2": (context) => QualityDashboard2(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
