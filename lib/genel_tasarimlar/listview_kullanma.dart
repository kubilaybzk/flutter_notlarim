import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class listview_kullanma extends StatelessWidget {
  listview_kullanma({Key? key}) : super(key: key);

  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(
        index + 1, 'Öğrenci adı ${index + 1}', 'Öğrenci soyadi ${index + 1}'),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: EasyLoading.init(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("ListView kullanımı"),
          ),
          body: Center(
              //child:verison_one(tumOgrenciler: tumOgrenciler),
              //child: verion_two(),
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        // diyoruz ki bu liste map edilsin
                        title: Text(tumOgrenciler[index]
                            .isim), //ListTile olarak map edilsin.
                        subtitle: Text(tumOgrenciler[index]
                            .soyisim), //Her bir öğrenci için ayarlamaları yapıyoruz burada.
                        leading: CircleAvatar(
                          child: Text(tumOgrenciler[index].id.toString()),
                        ),

                        onLongPress: () {
                          debugPrint(tumOgrenciler[index].isim.toString() +
                              "   olan  öğrenciye tıklandı");
                          EasyLoading.showToast(
                              tumOgrenciler[index].isim.toString() +
                                  " Tıklandı",
                              duration: Duration(seconds: 3),
                              dismissOnTap: true,
                              toastPosition: EasyLoadingToastPosition.bottom);
                        },
                        onTap: () {},
                      ),
                      color: index % 2 == 0
                          ? Colors.blueAccent
                          : Colors.greenAccent,
                    );
                  },
                  itemCount: tumOgrenciler.length,
                  separatorBuilder: (context, index) {
                    if (index % 4 == 0 && index != 0) {
                      return Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/add.jpg'))),
                      );
                    } else {
                      return Divider(
                        thickness: 2,
                        color: Colors.black,
                      );
                    }
                  })),
        ));
  }

/*Başka bir ListView kullanalım. 

En basitinden instagram takipçi analizi programı geliştirdik mesela
takipten çıkan hesaplar sıralanıyor
4 hesabı sıralattık daha sonra bir reklamın sıraya girmesini istedik 
o zaman bu widget kullanılacak.
      Örnek olarak  bir önceki versiyon 


*/

/*

Başka bir ListView kullanalım. 
    Bunun için ListView.builder kullanırız bunun püf noktası
    kısaca biz bir şeyi oluşturmak için kaydırma yapmamız gereke mesela 
    twitter'da yeni twettlerin oluşması için kaydırma yaparız ...
           ListView.builder(itemBuilder: itemBuilder)
                                |
                                \/
                                Burada bizden bir lambda expression ister. 
                                  Yani ekranda her bir tetiklenme sonucu bu fonksiyon bir kere tekrarlanmalıdır.
                                                  Yani burası bir fonksiyondur.



Basit bir örnek verelim : 

  ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Text("Burası ${index} inci tetiklenme");
          },
          itemCount: tumOgrenciler.length,
        )),


              Context kısmı bizim için parentlardaki elemanlara ulaşmak istersek bunlara ulaşabilmizi sağlamak için veriliyor
              index değeri ise başlangıçtan itemCounter değerine kadar üretilecek widget eleman artık neyse onu üretmek için veriliyor.
              {
                Burada biz bir Text oluşturduk mesela biz bunu az önceki gibi yapabiliriz.
                yada istediğin gibi bir return değeri yapabilirsin burada.

              }

            Ek olarak bizden bir counter ister. 
                  Counter ekrana ne kadar eleman yazılacak onu söyler.

*/

  ListView version_two() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            // diyoruz ki bu liste map edilsin
            title:
                Text(tumOgrenciler[index].isim), //ListTile olarak map edilsin.
            subtitle: Text(tumOgrenciler[index]
                .soyisim), //Her bir öğrenci için ayarlamaları yapıyoruz burada.
            leading: CircleAvatar(
              child: Text(tumOgrenciler[index].id.toString()),
            ),

            onTap: () {
              debugPrint(tumOgrenciler[index].isim.toString() +
                  "   olan  öğrenciye tıklandı");
            },
          ),
          color: index % 2 == 0 ? Colors.blueAccent : Colors.greenAccent,
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }
}

/*  
        Burada bellek dostu olmayan bir listview kullandık Bunu biraz daha geliştirebiliriz.
*/
class verison_one extends StatelessWidget {
  const verison_one({
    Key? key,
    required this.tumOgrenciler,
  }) : super(key: key);

  final List<Ogrenci> tumOgrenciler;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: tumOgrenciler //Elimizde bir liste var
              .map((Ogrenci ogr) => ListTile(
                    // diyoruz ki bu liste map edilsin
                    title: Text(ogr.isim), //ListTile olarak map edilsin.
                    subtitle: Text(ogr
                        .soyisim), //Her bir öğrenci için ayarlamaları yapıyoruz burada.
                    leading: CircleAvatar(
                      child: Text(ogr.id.toString()),
                    ),
                  ))
              .toList()),
    );
  }
}

class Ogrenci {
  int id;
  String isim;
  String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
