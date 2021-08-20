import 'package:flutter/material.dart';

class yellow_page extends StatelessWidget {
  const yellow_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Yellow Page"),
            backgroundColor: Colors.yellow,
          ),
          body: Center(
            child: Text(
              "Yellow Page",
              style: TextStyle(fontSize: 24, color: Colors.yellow),
            ),
          )),
    );
  }
}
