import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Widgets/button.dart';
import '../Widgets/gradientTextColor.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color yello = Color.fromARGB(255, 247, 186, 18);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          toolbarHeight: 40,
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
                yello,
                yello,
                yello,
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
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: yello,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              height: height,
              width: width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 70),
                    child: Row(
                      children: [
                        Container(
                            //   child: Image.network(
                            //       'https://picsum.photos/250?image=9'),
                            ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                )),
                            alignment: Alignment.center,
                            child: TextButton(
                              child: Text("Image",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Langer\nUpdate",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                )),
                            alignment: Alignment.center,
                            child: TextButton(
                              child: Text("Image",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Emergency\n      Food",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 80),
                    child: Text("Our Vission",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                        "We envision a India wherethe poor and hungry has access to hygienic, good quality, nutritious food. Everyone understands the consequences of hunger and poor nutrition and is committed to creating a stronger, healthier India."),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
