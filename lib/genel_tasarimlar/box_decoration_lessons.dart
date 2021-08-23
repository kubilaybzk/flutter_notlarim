//   https://medium.com/jlouage/flutter-boxdecoration-cheat-sheet-72cedaa1ba20

import 'package:flutter/material.dart';

void main() {
  runApp(box_decoration_lesson_with_linked_image());
}

class box_decoration_lesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Uygulamanın adı"),
          ),
          body: Center(
            child: Container(
              child: FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 200.0,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border(
                  top: BorderSide(width: 4, color: Colors.yellow),
                  bottom: BorderSide(width: 4, color: Colors.yellow),
                  left: BorderSide(width: 4, color: Colors.yellow),
                  right: BorderSide(width: 4, color: Colors.yellow),
                ),
              ),
            ),
          ),
        ));
  }
}

class box_decoration_lesson2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Uygulamanın adının ikinci şekli"),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: FlutterLogo(
                    style: FlutterLogoStyle.stacked,
                    size: 120,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      border: Border.all(width: 4, color: Colors.black)),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: FlutterLogo(
                    style: FlutterLogoStyle.stacked,
                    size: 120,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      border: Border.all(width: 4, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}

class box_decoration_lesson_with_linked_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Uygulamanın adının ikinci şekli"),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        alignment: Alignment.center,
                        scale: 1,
                        image: NetworkImage(
                            'https://www.freepnglogos.com/uploads/galatasaray-logo-png/siyah-uzerine-gs-logosu-ve-yildizar-hd-kalite-ucretsiz-indir-15.png')),
                    color: Colors.green,
                    border: Border.all(width: 4, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Container(
                  width: 150,
                  height: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 25,
                          offset: Offset(10, 20))
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        alignment: Alignment.center,
                        scale: 1,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://e7.pngegg.com/pngimages/608/641/png-clipart-galatasaray-s-k-lion-product-illustration-gs-logo-logo-lion-thumbnail.png')),
                    color: Colors.green,
                    border: Border.all(width: 4, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
