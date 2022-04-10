import 'package:flutter/material.dart';

class TextFeildButton extends StatelessWidget {
  String text;
  IconData icon;
  TextFeildButton(this.text, this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      padding: EdgeInsets.all(10.0),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(icon),
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
        ),
      ),
    );
  }
}
