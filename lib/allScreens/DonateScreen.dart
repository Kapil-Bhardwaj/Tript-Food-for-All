import 'package:flutter/material.dart';
import 'package:tripti/Widgets/button.dart';

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var val = 1;
    Color yello = Color.fromARGB(255, 247, 186, 18);
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Donate",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200,
              width: width,
              decoration: BoxDecoration(
                  color: yello, borderRadius: BorderRadius.circular(18)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Donation\nRaised",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "₹5,32,288.90",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 40),
                    child: Text(
                      "Food For All",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 170, top: 8.0),
                    child: Text(
                      "5200+ People Donated",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 70,
              width: width,
              decoration: BoxDecoration(
                  color: yello, borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Food",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Connection",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Find more",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.pink,
                    radius: 48,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 40,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 32,
                  ),
                  CircleAvatar(
                    backgroundColor: yello,
                    radius: 26,
                  )
                ]),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(17),
            child: Text(
                "Loreum epsum loreum epsum loreum loruem loreum loreum loreum loreumLoreum epsum loreum epsum "),
          ),
          Button("Donate now", yello, Colors.black, () {})
        ],
      ),
    );
  }
}
