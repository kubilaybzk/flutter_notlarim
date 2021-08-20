import 'package:flutter/material.dart';

void main() {
  runApp(expanded_flexible_lesson());
}

class expanded_flexible_lesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Rows and Columns"),
          ),
          body: Container(
            child: Row(
              mainAxisSize: MainAxisSize
                  .max, // Burayı max min yaparak değişimi görebiliriz.
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.black,
                      width: 75,
                      height: 75,
                    )),
                Expanded(
                    child: Container(
                  color: Colors.yellow,
                  width: 75,
                  height: 75,
                )),
                Expanded(
                    child: Container(
                  color: Colors.red,
                  width: 75,
                  height: 75,
                )),
                Expanded(
                    child: Container(
                  color: Colors.blue,
                  width: 75,
                  height: 75,
                )),
              ],
            ),
          ),
        ));
  }
}


/*Yukarıda ilgili satır içine koyduğumuz Container sayısı 
oldukça fazla bundan dolayı sığmadı.
Bunu önlemek için bir kaç yol var ilk yol ;
    Expanded kullanmak expanded değerleri ilgili satıra göre ayarlama olayında kullanılır.
      Bundan önce verilen yükseklik ve genişlik değerleri önemsiz demek.
        Mesela bir kutunun diğerlerine göre daha büyük olmasını istiyoruz
          O zaman flex değerini kullanırız flex değeri o elemanın widget'ın olacağı boyutu düzenler.



*/