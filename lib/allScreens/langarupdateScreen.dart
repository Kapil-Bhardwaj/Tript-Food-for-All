import 'package:flutter/material.dart';

import '../Widgets/gradientTextColor.dart';

class LangerUpdate extends StatelessWidget {
  const LangerUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GradientText(
          'To Be Updated Soon....\nPlease Contenue....',
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
    );
  }
}
