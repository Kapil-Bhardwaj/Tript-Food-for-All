import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 60,
        toolbarHeight: 60,
        backgroundColor: Color.fromARGB(255, 250, 188, 17),
        leading: Padding(
          padding: const EdgeInsets.all(0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: CircleAvatar(
                radius: 12,
                // backgroundImage: NetworkImage(
                //   'https://source.unsplash.com/50x50/?portrait',
                // ),
              ),
            ),
            Text(
              "Saujanya",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          SizedBox(width: 12),
          Icon(
            Icons.supervised_user_circle_outlined,
            color: Colors.black,
          ),
          SizedBox(width: 12),
          Icon(
            Icons.call_sharp,
            color: Colors.black,
          ),
          SizedBox(width: 14),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            DottedBorder(
              dashPattern: const <double>[15, 10],
              radius: const Radius.circular(34),
              strokeWidth: 1,
              strokeCap: StrokeCap.round,
              child: Container(
                height: height / 7,
                width: width / 1.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text("Saujanya is a volunteer of akshaya NGO"),
                    SizedBox(height: 20),
                    Text(
                      "she will assist you in the donation\n process. Be Mindful and Respect the volunteer.",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(29),
              child: Text(
                "24 October, Sunday",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            Row(children: [
              SizedBox(
                width: 4,
              ),
              CircleAvatar(
                radius: 12,
              ),
              Padding(
                padding: EdgeInsets.only(right: 120, top: 10, left: 5),
                child: chatBox(
                    "Hi! This is Saujanya. Thankyou for \ndonating the food. I will be there at \nyour location at 8 pm."),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(right: 280, top: 5),
              child: Text(
                "10:30 AM",
                style: TextStyle(fontSize: 10),
              ),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(100, 20, 5, 0),
                child: chatBox("Alright! Kindly text once you reach here."),
              ),
              CircleAvatar(
                radius: 12,
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 280, top: 5),
              child: Text(
                "10:30 AM",
                style: TextStyle(fontSize: 10),
              ),
            ),
            Row(children: [
              SizedBox(
                width: 4,
              ),
              CircleAvatar(
                radius: 12,
              ),
              Padding(
                padding: EdgeInsets.only(right: 120, top: 10, left: 5),
                child: chatBox("I’m at you location"),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(right: 280, top: 5),
              child: Text(
                "10:30 AM",
                style: TextStyle(fontSize: 10),
              ),
            ),
            Row(children: [
              Padding(
                padding: EdgeInsets.fromLTRB(255, 20, 5, 0),
                child: chatBox("I’m coming "),
              ),
              CircleAvatar(
                radius: 12,
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 280, top: 5),
              child: Text(
                "10:30 AM",
                style: TextStyle(fontSize: 10),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.white10,
                            filled: true,
                            hintText: "Write message...",
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: Color.fromARGB(255, 250, 188, 17),
                      elevation: 0,
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                      backgroundColor: Color.fromARGB(255, 250, 188, 17),
                      elevation: 0,
                    ),
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

chatBox(String text) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 250, 188, 17)),
    padding: EdgeInsets.all(16),
    child: Text(
      text,
      style: TextStyle(fontSize: 12),
    ),
  );
}
