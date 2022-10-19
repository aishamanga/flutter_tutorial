import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Page7.dart';

class Page6 extends StatelessWidget {
  Page6({super.key});
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Flutter - tutorialkart.com'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
                onChanged: (text) {
                  setState(() {
                    fullName = text;
                    //you can access nameController in its scope to get
                    // the value of text entered as shown below
                    //fullName = nameController.text;
                  });
                },
              )),
          Container(
            margin: EdgeInsets.all(20),
            child: Text(fullName),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page7()),
                );
              },
              child: Text("Next tutorial"))
        ])));
  }

  void setState(Null Function() param0) {}
}
