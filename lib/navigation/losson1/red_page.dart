import 'dart:math';

import 'package:flutter/material.dart';

class red_page extends StatelessWidget {
  red_page({Key? key}) : super(key: key);
  int _rastgelesayi = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Red Page"),
            backgroundColor: Colors.red,
            automaticallyImplyLeading: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Red Page",
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
                TextButton(
                    onPressed: () {
                      _rastgelesayi = Random().nextInt(100);
                      debugPrint("Üretilen sayı + ${_rastgelesayi}");
                      Navigator.of(context).pop(_rastgelesayi);
                      /*

                    push itmek demek eklemek olarak düşün stak üzerine ekliyoruz
                    çıkarmak için ise pop kullanırız.


                    */
                    },
                    child: Text("Geri Dön"))
              ],
            ),
          )),
    );
  }
}


/*

pop methodu geriye istediğiniz bilgileri döndürür bunun sonucunda 
push ile bu bilgileri alabilirsiniz
Örnek için bir rastgele sayı üretelim ve bu sayıya 
bir önceki sayfada ulaşmaya çalışalım.

Navigator.of(context).pop(_rastgelesayi);

şeklinde geri yolladık.


*/