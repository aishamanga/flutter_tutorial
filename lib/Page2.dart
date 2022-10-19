import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Column Widget Tutorial"),
      ),
      body: Center(
        child: Column(children: [
          Text('Text 1', style: TextStyle(fontSize: 24.0)),
          Text('Text 1', style: TextStyle(fontSize: 24.0)),
          Icon(
            Icons.beach_access,
            color: Colors.pink,
            size: 40.0,
          ),
          Icon(
            Icons.audiotrack,
            color: Colors.green,
            size: 40.0,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
              child: Text("Next tutorial"))
        ]),
      ),
    );
  }
}
