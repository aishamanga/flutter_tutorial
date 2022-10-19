import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Page8.dart';

class Page7 extends StatelessWidget {
  Page7({super.key});

  OS? _os = OS.mac;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(title: Text("Radio Button tutorial")),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Text('Which Operating System are your currently using?'),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                  title: const Text('Mac'),
                  leading: Radio<OS>(
                    value: OS.mac,
                    groupValue: _os,
                    onChanged: (OS? value) {
                      setState(() {
                        _os = value;
                      });
                    },
                  )),
              ListTile(
                  title: const Text('Windows'),
                  leading: Radio<OS>(
                    value: OS.windows,
                    groupValue: _os,
                    onChanged: (OS? value) {
                      setState(() {
                        _os = value;
                      });
                    },
                  )),
              ListTile(
                  title: const Text('Linux'),
                  leading: Radio<OS>(
                    value: OS.linux,
                    groupValue: _os,
                    onChanged: (OS? value) {
                      setState(() {
                        _os = value;
                      });
                    },
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page8()),
                    );
                  },
                  child: Text("Next tutorial"))
            ],
          ),
        ));
  }

  void setState(Null Function() param0) {}
}

enum OS { mac, windows, linux }
