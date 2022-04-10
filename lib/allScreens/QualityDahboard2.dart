import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripti/Widgets/button.dart';

import '../Widgets/gradientTextColor.dart';

class QualityDashboard2 extends StatelessWidget {
  const QualityDashboard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _voidAction() {
      Navigator.pushNamed(context, "Dashboard");
    }

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          toolbarHeight: 30,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.man),
            color: Colors.grey,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: GradientText(
              'TRIPTI',
              style: const TextStyle(fontSize: 20),
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black,
                Colors.black,
                Colors.yellow,
                Colors.yellow,
                Colors.yellow,
              ]),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: Colors.grey,
            )
          ],
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.red,

            // Status bar brightness (optional)
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              height: height,
              width: width,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Quality Check",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Food Bio Senser : INSERTED",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    alignment: Alignment.topCenter,
                    height: height / 1.8,
                    width: width / 1.02,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Cooked Rice",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 55),
                        _rowtxt("Quality", "Temprature", 18, 18),
                        SizedBox(height: 30),
                        _rowtxt("38Kg", "28°C", 22, 22),
                        SizedBox(height: 40),
                        _rowtxt("Humidity", "Microbal Growth", 18, 18),
                        SizedBox(height: 30),
                        _rowtxt("48", "68", 22, 22),
                        SizedBox(height: 40),
                        _rowtxt("ph", "Microbal", 18, 18),
                        SizedBox(height: 40),
                        Text(
                          "Checked at: 09-04-2022    08:09:37 PM",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "SAFE FOR CONSUMPTION",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Button(
                      "Take your next Reading",
                      Color.fromARGB(255, 255, 230, 4),
                      Colors.black,
                      _voidAction)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

_rowtxt(String txt, String txt2, double size, double size2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        txt,
        style: TextStyle(color: Colors.white, fontSize: size),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        txt2,
        style: TextStyle(color: Colors.white, fontSize: size2),
      )
    ],
  );
}
