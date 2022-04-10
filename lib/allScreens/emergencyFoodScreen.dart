import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripti/Widgets/TextFeildButton.dart';
import 'package:tripti/Widgets/button.dart';

import '../Widgets/gradientTextColor.dart';

class EmergencyFoodScreen extends StatelessWidget {
  _voidAction() {}
  const EmergencyFoodScreen({Key? key}) : super(key: key);

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
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.only(right: 230),
                      child: Text(
                        "Lacation",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: TextFeildButton("Delhi", Icons.location_on),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 218.0),
                      child: Text(
                        "Enter Quality",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 04,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 160.0),
                      child: Text(
                        "No. of Food Packages Needed",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 270),
                      child: _otpbox(),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 218.0),
                      child: Text(
                        "Upload Vedio",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 270),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12))),
                        child: RaisedButton(
                          color: Colors.white30,
                          onPressed: (() => {}),
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Center(
                              child: Icon(Icons.attach_file),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(24),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
                    Padding(
                      padding: const EdgeInsets.only(right: 39.0),
                      child: Text(
                        "Anything you’d like to let us know",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 269.0),
                      child: Text(
                        "(optional)",
                      ),
                    ),
                    Container(
                        width: width,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: "Commit",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(color: Colors.green, width: 2),
                            ),
                          ),
                        )),
                    SizedBox(height: 4),
                    Button("Confirm", Colors.black, Colors.white, _voidAction)
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
