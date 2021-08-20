import 'package:flutter/material.dart';

void main() {
  runApp(cardlistview());
}

/*
class cardlistview extends StatelessWidget {
  const cardlistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Listview with Cards"),
          ),
          body: Center(
            child: Column(
              children: [
                card_elements(),
                card_elements(),
                card_elements(),
                card_elements(),
                card_elements(),
                card_elements(),
                card_elements(),
              ],
            ),
          ),
        ));
  }
}


*/

class card_elements extends StatelessWidget {
  const card_elements({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade200,
      shadowColor: Colors.black,
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        enabled: true,
        leading: Icon(Icons.add),
        title: Text("User Names"),
        subtitle: Text("UserName"),
        trailing: Icon(Icons.real_estate_agent),
      ),
    );
  }
}

/*


Şimdi ilk seçenekte belirli sayıda elemen ekleyebiliriz daha fazla eklemek istersek uygulamaya sığmayacak
bundan dolayı hata alacağız bunu çözmek için yöntemler öğreneceğiz burada ilk yöntem;

SingleChildScrollView 
      bir adet child alır Row yada Column bu şekilde  elemanlar kaydırılabilir şekilde olabilir.


*/

class cardlistview extends StatelessWidget {
  const cardlistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Listview with Cards"),
          ),
          body: Center(
            child: ListView(children: [
              Column(
                children: [
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                  card_elements(),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Another Child"),
              ),
            ]),
          ),
        ));
  }
}

class SingleChildKullan extends StatelessWidget {
  const SingleChildKullan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
          card_elements(),
        ],
      ),
    );
  }
}



/*

ListView Kullanarak bu sorunu aşabiliriz.
    Bu widget children kullanarak elemanları listeler.
                PERFORMANS DOSTU DEĞİL !
                  PERFORMANS DOSTU DEĞİL !
                    PERFORMANS DOSTU DEĞİL !
                      PERFORMANS DOSTU DEĞİL !
                        PERFORMANS DOSTU DEĞİL !
                          PERFORMANS DOSTU DEĞİL !          
    reverse-> Elemanları ters yazdırır.

*/