import 'dart:math';

import 'package:flutter/material.dart';

class lesson8_orange_page extends StatelessWidget {
  lesson8_orange_page({Key? key}) : super(key: key);
  int _rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('orange lesson8_orange_page'),
        backgroundColor: Colors.orange,
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'lesson8_orange_page Page',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
/*

Burada   

Navigator.popUntil(context, (route) => route.isFirst);

birşart sağlamamızı istiyor
mesela bu satırda ilk sayfaya main sayfaya gidinceye kadar pop et demek istiyoruz.

----------------------------------------------------------------------------------------------

Navigator.of(context).popUntil((route) => route.settings.name == 'lesson8_purple_page');

  Burada pop ettiğimiz sayfaların adı  lesson8_purple_page olana kadar pop etmeye devam et demek oluyor.

  -----------------------------------------------------------------------------------------------

  

*/

                Navigator.popUntil(context, (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
              child: Text(
                'En başa geri dön',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil(
                    (route) => route.settings.name == 'lesson8_purple_page');
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
              child: Text(
                'Mora Geri Dön',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .popUntil((route) => route.settings.name == '/');
              },
              style: ElevatedButton.styleFrom(primary: Colors.teal.shade600),
              child: Text(
                'En başa dön',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/yellowPage', (route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              child: Text(
                'Sarıyı ana sayfadan sonra ekle',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
