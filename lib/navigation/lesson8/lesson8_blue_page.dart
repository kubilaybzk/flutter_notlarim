import 'dart:math';

import 'package:flutter/material.dart';

class lesson8_blue_page extends StatelessWidget {
  lesson8_blue_page({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('on will pop calıstı 8');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('blue lesson8_blue_page'),
          backgroundColor: Colors.blue,
          //automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'lesson8_blue_page Page',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
