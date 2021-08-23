import 'dart:math';

import 'package:flutter/material.dart';

class lesson6_orange_page extends StatelessWidget {
  lesson6_orange_page({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('orange lesson6_orange_page'),
        backgroundColor: Colors.orange,
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'lesson6_orange_page Page',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
