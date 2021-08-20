import 'dart:math';

import 'package:flutter/material.dart';

class lesson3_red_page extends StatelessWidget {
  lesson3_red_page({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('on will pop calıstı 3');
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Red lesson3_another_pops'),
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
              ElevatedButton(
                onPressed: () {
                  if (Navigator.of(context).canPop()) {
                    print("Geri dönebilecek");
                    Navigator.of(context).pop();
                  } else {
                    print("Geri dönemez.");
                  }
                  /*
                  Eğer stack içinde başka bir sayfa varsa 
                  pop yapsın elemanı çıkarsın yoksa yapmasın

                    Bunun için genelde İf blogu kullanılır True false gönderir.
                */
                },
                style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
                child: Text(
                  'Can Pop kullanma yapma ',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
