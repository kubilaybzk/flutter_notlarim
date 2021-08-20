import 'dart:math';

import 'package:flutter/material.dart';

class lesson2_red_page extends StatelessWidget {
  lesson2_red_page({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('on will pop calıstı');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Red'),
          backgroundColor: Colors.red,
          //automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Red Page',
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  _rastgeleSayi = Random().nextInt(100);
                  print("Üretilen sayı $_rastgeleSayi");
                  Navigator.of(context).pop<int>(_rastgeleSayi);
                },
                child: Text('Geri Dön'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*

onWillPop: () {
        print('on will pop calıstı');
        return Future.value(false);
      },
child: Scaffold .....

Burada amac kullanıcıyı kısıtlamak yani kullanıcı sadece ,
    geri tuşu ile yada appbar içinde bulunan buton olmadan geri gidemez.


*/