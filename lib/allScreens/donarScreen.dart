import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/button.dart';

class Donar extends StatelessWidget {
  const Donar({Key? key}) : super(key: key);
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
      body: SingleChildScrollView(
        child: Row(
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
                      padding:
                          const EdgeInsets.only(right: 10, top: 30, left: 10),
                      child: Row(
                        children: [
                          Text(
                            "Affection Giver",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100),
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
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    _o(
                      width,
                      "Hotels/Banquet Halls/Restaurants\n",
                    ),
                    SizedBox(height: 30),
                    _o(
                      width,
                      "Corporates\n",
                    ),
                    SizedBox(height: 30),
                    _o(
                      width,
                      "Temples/Gurudwaras\n",
                    ),
                    SizedBox(height: 30),
                    _o(
                      width,
                      "Individuals\n",
                    ),
                    SizedBox(height: 50.0),
                    Button("Confirm", Colors.white70, Colors.black, _voidAction)
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

_o(double width, String a) {
  return Container(
      child: Row(
    children: [
      RaisedButton(
        splashColor: Colors.yellow,
        focusColor: Colors.yellow,
        color: Colors.white10,
        onPressed: () {},
        child: Container(
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
            top: 20,
          ),
          height: 50,
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
                    fontSize: 20,
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
