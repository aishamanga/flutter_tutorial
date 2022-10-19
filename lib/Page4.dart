import 'dart:html';
import 'package:flutter_tutorial/Page5.dart';

import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text("Grid view Tutorial"),
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          primary: false,
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 1"),
              color: Colors.orange[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 2"),
              color: Colors.green[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 3"),
              color: Colors.red[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 4"),
              color: Colors.purple[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 5"),
              color: Colors.blueGrey[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text("Tile 6"),
              color: Colors.yellow[200],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page5()),
                  );
                },
                child: Text("Next tutorial"))
          ],
        ),
      ),
    );
  }
}
