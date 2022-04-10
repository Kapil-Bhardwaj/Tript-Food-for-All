import 'package:flutter/material.dart';
import 'package:tripti/allScreens/ChatScreen.dart';
import 'package:tripti/allScreens/DonateScreen.dart';
import 'package:tripti/allScreens/Quality_Dahboard_1.dart';
import 'package:tripti/allScreens/dashboard.dart';
import 'package:tripti/allScreens/donarScreen.dart';
import 'package:tripti/allScreens/emergencyFoodScreen.dart';
import 'package:tripti/allScreens/homeScreen.dart';
import 'package:tripti/allScreens/recieverScreen.dart';

import 'allScreens/langarupdateScreen.dart';

/// This Widget is the main application widget.
class MyyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    homeScreen(),
    Dashboard(),
    ChatScreen(),
    Donate(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home, color: Colors.grey),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.chat_outlined, color: Colors.grey),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.money_outlined, color: Colors.grey),
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
