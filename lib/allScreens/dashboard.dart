import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripti/Widgets/TextFeildButton.dart';

import '../Widgets/button.dart';
import '../Widgets/gradientTextColor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  _voidAction() {
    Navigator.pushNamed(context, "Quality_Dahboard1");
  }

  @override
  Widget build(BuildContext context) {
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
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black,
                Colors.black,
                Color.fromARGB(255, 229, 207, 7),
                Color.fromARGB(255, 229, 207, 7),
                Color.fromARGB(255, 229, 207, 7),
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
      body: SingleChildScrollView(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 246, 222, 3),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                height: height / 1.2,
                width: width,
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 210, top: 70, left: 10),
                      child: Text(
                        "Nearby Food\nSupport ",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        height: height / 3,
                        width: width / 1.09,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(16)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GradientText(
                              'Will Be Updated Soon....\n',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                              gradient: LinearGradient(colors: [
                                Colors.red,
                                Colors.blue,
                                Colors.yellow,
                                Colors.green,
                                Colors.blue,
                                Colors.purple,
                              ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                          dot(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 72,
                    ),
                    Button("Confirm & Check Quality", Colors.black,
                        Colors.white, _voidAction),
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

_otpbox() {
  return Material(
    child: Container(
      color: Color.fromARGB(255, 246, 222, 3),
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
          maxLength: 2,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: '3',
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.grey),
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

dot() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      child: Row(
        children: [
          Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
          ),
        ],
      ),
    ),
  );
}
