import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  const Page8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Flutter Tutorial - TutorialKart'),
        ),
        body: ListView(children: <Widget>[
          Center(
              child: Text(
            'Students',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          DataTable(
            columns: [
              DataColumn(label: Text('RollNo')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Class')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Arya')),
                DataCell(Text('6')),
              ]),
              DataRow(cells: [
                DataCell(Text('12')),
                DataCell(Text('John')),
                DataCell(Text('9')),
              ]),
              DataRow(cells: [
                DataCell(Text('42')),
                DataCell(Text('Tony')),
                DataCell(Text('8')),
              ]),
            ],
          ),
        ]));
  }
}
