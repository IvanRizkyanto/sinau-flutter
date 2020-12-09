import 'package:flutter/material.dart';
import './widlab.dart';

void main() {
  init();
  runApp(Aplikasiku());
}

class Aplikasiku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Cuman Buat Latihan"),
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: profileBox,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                  child: bigBox,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: smallBox,
                        ),
                        Expanded(
                          flex: 5,
                          child: smallBox,
                        ),
                      ],
                    ))
              ],
            )));
  }
}
