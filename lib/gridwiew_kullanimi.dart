import 'package:flutter/material.dart';

/*

A scrollable, 2D array of widgets.

  Burada kısaca bir fotoğraf galerisi gibi düşünebiliriz.
      Örnek olarak ;


*/

class gridwiew_kullanimi extends StatelessWidget {
  const gridwiew_kullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Scaffold(
          body: GridView.builder(
              itemCount: 100,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      3), // Yan yana kaç adet eleman sıralanacağı söyleniyor.
              itemBuilder: (BuildContext context, int size) {
                return Container(
                    alignment: Alignment.center,
                    child: Text("Burası ${size + 1} 'inci eleman"),
                    color: Colors.red[100 * (size % 9)]);
              }),
        ),
      ),
    );
  }

  GridView extent() {
    return GridView.extent(
      padding: EdgeInsets.fromLTRB(25, 40, 0, 20),
      primary: false,
      scrollDirection: Axis.horizontal,
      maxCrossAxisExtent:
          200, // Bir elemanın alabileceği maksimum büyüklük buradan hesaplanıyor.
      mainAxisSpacing: 20, // Aşağı olan elemanların bpşluklarını belirliyoruz.
      crossAxisSpacing:
          20, // Sola doğru olan elemanların boşluklarını belirliyoruz
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya",
            textAlign: TextAlign.center,
          ),
          color: Colors.red,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 2",
            textAlign: TextAlign.center,
          ),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 3",
            textAlign: TextAlign.center,
          ),
          color: Colors.blue,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 4",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          color: Colors.black,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 5",
            textAlign: TextAlign.center,
          ),
          color: Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 6",
            textAlign: TextAlign.center,
          ),
          color: Colors.orange,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya",
            textAlign: TextAlign.center,
          ),
          color: Colors.red,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 2",
            textAlign: TextAlign.center,
          ),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 3",
            textAlign: TextAlign.center,
          ),
          color: Colors.blue,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 4",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          color: Colors.black,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 5",
            textAlign: TextAlign.center,
          ),
          color: Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 6",
            textAlign: TextAlign.center,
          ),
          color: Colors.orange,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya",
            textAlign: TextAlign.center,
          ),
          color: Colors.red,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 2",
            textAlign: TextAlign.center,
          ),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 3",
            textAlign: TextAlign.center,
          ),
          color: Colors.blue,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 4",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          color: Colors.black,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 5",
            textAlign: TextAlign.center,
          ),
          color: Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 6",
            textAlign: TextAlign.center,
          ),
          color: Colors.orange,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya",
            textAlign: TextAlign.center,
          ),
          color: Colors.red,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 2",
            textAlign: TextAlign.center,
          ),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 3",
            textAlign: TextAlign.center,
          ),
          color: Colors.blue,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 4",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          color: Colors.black,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 5",
            textAlign: TextAlign.center,
          ),
          color: Colors.purple,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Merhaba Dünya 6",
            textAlign: TextAlign.center,
          ),
          color: Colors.orange,
        ),
      ],
    );
  }

  Scaffold count() {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.fromLTRB(25, 40, 0, 20),
        primary: false,
        scrollDirection: Axis.horizontal,
        crossAxisCount:
            2, // Kaç tane elemanın sola doğru olacağını belirliyoruz
        mainAxisSpacing:
            20, // Aşağı olan elemanların bpşluklarını belirliyoruz.
        crossAxisSpacing:
            20, // Sola doğru olan elemanların boşluklarını belirliyoruz
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya",
              textAlign: TextAlign.center,
            ),
            color: Colors.red,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 2",
              textAlign: TextAlign.center,
            ),
            color: Colors.yellow,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 3",
              textAlign: TextAlign.center,
            ),
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 4",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            color: Colors.black,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 5",
              textAlign: TextAlign.center,
            ),
            color: Colors.purple,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 6",
              textAlign: TextAlign.center,
            ),
            color: Colors.orange,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya",
              textAlign: TextAlign.center,
            ),
            color: Colors.red,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 2",
              textAlign: TextAlign.center,
            ),
            color: Colors.yellow,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 3",
              textAlign: TextAlign.center,
            ),
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 4",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            color: Colors.black,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 5",
              textAlign: TextAlign.center,
            ),
            color: Colors.purple,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 6",
              textAlign: TextAlign.center,
            ),
            color: Colors.orange,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya",
              textAlign: TextAlign.center,
            ),
            color: Colors.red,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 2",
              textAlign: TextAlign.center,
            ),
            color: Colors.yellow,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 3",
              textAlign: TextAlign.center,
            ),
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 4",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            color: Colors.black,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 5",
              textAlign: TextAlign.center,
            ),
            color: Colors.purple,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 6",
              textAlign: TextAlign.center,
            ),
            color: Colors.orange,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya",
              textAlign: TextAlign.center,
            ),
            color: Colors.red,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 2",
              textAlign: TextAlign.center,
            ),
            color: Colors.yellow,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 3",
              textAlign: TextAlign.center,
            ),
            color: Colors.blue,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 4",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            color: Colors.black,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 5",
              textAlign: TextAlign.center,
            ),
            color: Colors.purple,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Merhaba Dünya 6",
              textAlign: TextAlign.center,
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
