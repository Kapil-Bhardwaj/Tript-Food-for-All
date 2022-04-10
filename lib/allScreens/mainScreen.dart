import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripti/Widgets/button.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  _voidAction() {}
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 12,
        backgroundColor: Colors.yellow,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.red,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
      ),
      backgroundColor: Colors.yellow,
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              height: height,
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 110, top: 30),
                    child: Text(
                      "How you can help?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width / 1.5),
                    child: RaisedButton(
                      color: Colors.white30,
                      onPressed: (() => {}),
                      child: Container(
                        height: 30,
                        width: 40,
                        child: Center(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150.0),
                    child: Text(
                      "Get started by choosing \nyour role for today",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  _o(width, "Affection Giver\n",
                      "Warriors for Fighting against poverty and food waste."),
                  SizedBox(height: 40),
                  _o(width, "Affection Receiver\n",
                      "NGOs serving Poor,underpreviledged destitutes, needy people."),
                  SizedBox(height: 150.0),
                  Button("Confirm", Colors.white70, Colors.black, _voidAction)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_o(double width, String a, String b) {
  return Container(
      child: Row(
    children: [
      RaisedButton(
        focusColor: Colors.yellow,
        color: Colors.white10,
        onPressed: (() => {}),
        child: Container(
          margin: EdgeInsets.all(10.0),
          height: 100,
          width: width / 1.19,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  a,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                Text(
                  b,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(24),
        ),
      ),
    ],
  ));
}
