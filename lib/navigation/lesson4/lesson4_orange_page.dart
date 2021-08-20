import 'dart:math';

import 'package:flutter/material.dart';

class lesson4_orange_page extends StatelessWidget {
  lesson4_orange_page({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('orange lesson4_orange_page'),
        backgroundColor: Colors.orange,
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'lesson4_orange_page Page',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
