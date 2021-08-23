import 'package:flutter/material.dart';

void main() {
  runApp(MyCenterApp());
}

class MyCenterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text("Uygulamanın adı"),
        ),
        body: Center(
          //WidthFactor ve HeightFactor bizim child'ın boyutunu arttırıyor. 2 katı için mesela.
          widthFactor: 2,
          heightFactor: 2,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Now ı am learning Flutter. ",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Colors.red,
            //Eğer bunu engellemek istiyorsak yani Container'ın sabit bir boyut almasını istiyorsak.
            //Buna constraints kullanarak müdahale edebiliriz.
            constraints: BoxConstraints(
              maxHeight: 100,
              minHeight: 100,
            ),
            margin: EdgeInsets.all(16),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Okey");
          },
        ),
      ),
    );
  }
}
