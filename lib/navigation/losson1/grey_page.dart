import 'package:flutter/material.dart';

class grey_page extends StatelessWidget {
  const grey_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Grey Page"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Text(
              "Grey Page",
              style: TextStyle(fontSize: 24, color: Colors.grey),
            ),
          )),
    );
  }
}
