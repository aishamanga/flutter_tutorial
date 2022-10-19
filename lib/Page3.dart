import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Row Widget  Tutorial"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Text 1',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
          Icon(
            Icons.beach_access,
            color: Colors.pink,
            size: 90.0,
          ),
          Text(
            'Text 2',
            style: TextStyle(fontSize: 20.0),
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 90.0,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },
              child: Text("Next tutorial"))
        ],
      ),
    );
  }
}
