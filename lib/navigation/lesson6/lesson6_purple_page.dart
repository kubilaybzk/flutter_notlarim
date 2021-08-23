import 'dart:math';

import 'package:flutter/material.dart';

class lesson6_purple_page extends StatelessWidget {
  lesson6_purple_page({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('orange lesson6_purple_page'),
        backgroundColor: Colors.purple,
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'lesson6_purple_page Page',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
