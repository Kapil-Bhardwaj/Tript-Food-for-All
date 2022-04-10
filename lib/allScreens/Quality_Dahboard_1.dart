import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripti/Widgets/button.dart';

import '../Widgets/gradientTextColor.dart';

class QualityDashboard1 extends StatelessWidget {
  const QualityDashboard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _voidAction() {
      Navigator.pushNamed(context, "Quality_Dahboard2");
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
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              height: height,
              width: width,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                    height: height / 2.1,
                    width: width / 1.02,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        )),
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Container(
                          height: height / 4,
                          width: width / 1.11,
                          color: Colors.white70,
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(right: 200.0),
                          child: Text(
                            "Quality Check",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150.0, top: 10),
                          child: Text(
                            "Please insert Bio Senser in the food for ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Safe For Consuption",
                          style: TextStyle(color: Colors.green, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 90),
                  Button("Connect", Color.fromARGB(255, 216, 196, 17),
                      Colors.black, _voidAction)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
