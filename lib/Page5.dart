import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Page6.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("List view Tutorial"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.lime[800],
            child: const Center(child: Text('Apple')),
          ),
          Container(
            height: 50,
            color: Colors.lime[600],
            child: const Center(child: Text('Banana')),
          ),
          Container(
            height: 50,
            color: Colors.lime[400],
            child: const Center(child: Text('Mango')),
          ),
          Container(
            height: 50,
            color: Colors.lime[200],
            child: const Center(child: Text('Orange')),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page6()),
                );
              },
              child: Text("Next tutorial"))
        ],
      ),
    );
  }
}
