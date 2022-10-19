import 'package:flutter/material.dart';
import 'package:flutter_tutorial/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Appbar tutorial"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            );
          },
          child: Text(
            "Tap Here to start Tutorial",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
