import 'package:flutter/material.dart';

/*
 Mesela bu uygulamada StatelessWidget olarak değil bunu statefull widget olarak çevirip 
 setstate içinde güncelleme yaparak değerin atmasını yapabilirdik ama bu işlem sırasında bütün işlemler tek tek yeniden üretiliyordu.

Ve yapılan işlemkler hep yukarıdan aşağı doğru oluyordu şimdi biz aşağıdan yukarı değişim istiyoruz diyelim.

O zaman global key işlemi uygularız:
Widgetları takımlayan benzersiz elemanlar TC kimik numarası gibi düşün.


*/

/*
class TextFormField_lesson3 extends StatelessWidget {
  const TextFormField_lesson3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Globay Key Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Butona basma Miktarı : "), Text("0")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    ));
  }
}

Şimdi burada 2. text olan kısmı ilk önce statefull olarak ayarlayalım.

*/

class TextFormField_lesson3 extends StatelessWidget {
  TextFormField_lesson3({Key? key}) : super(key: key);
  final _ekrandegis = GlobalKey<_sayacdegerigostericiState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Globay Key Kullanımı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Butona basma Miktarı : "),
            sayacdegerigosterici(
              key: _ekrandegis,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _ekrandegis.currentState!.art();
          //_ekrandegis key'inin atandığı değere ulaş.
          //o anki widget'ın state değerlerine ulaş.
          //! null olabilir demek koymamız lazım.
          //.art() fonksiyonunu çalıştır.
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}

class sayacdegerigosterici extends StatefulWidget {
  sayacdegerigosterici({Key? key}) : super(key: key);

  @override
  _sayacdegerigostericiState createState() => _sayacdegerigostericiState();
}

class _sayacdegerigostericiState extends State<sayacdegerigosterici> {
  @override
  int _deger = 0;

  void art() {
    setState(() {
      _deger++;
    });
  }

  Widget build(BuildContext context) {
    return Text(
      _deger.toString(),
      style: Theme.of(context).textTheme.headline1,
    );
  }
}

/*
Şimdi iki widget değerimizde hazır nasıl aşağıda olan widget'a yukarıdan ulaşabilecek ve değerin değişmesini 
sağlayabilirz:
      Üstte bulunan ana widget ımıza global key olarak sayac değiştiğini gösteren key 'i tanımlayalım.

        final _ekrandegis = GlobalKey<_sayacdegerigostericiState>();

          !! Şimbi burada  <_sayacdegerigostericiState> olarak durmadan hangi widget'ın stateini alacaksak onu yazmak zorundayız.

            Her widget oluşturduğumuzda defauld olarka her widget içinde ;
            .....({Key? key}) : super(key: key);
                  kısmı oluyor şimdi bu başka widget değerinden buna ulaşmamızı sağlayan değerdir.
                      Burada amacımız şu 
                              sayacdegerigosterici() Widget ına ben erişmek istiyorum ama neyle erişmek istediğimizi
                              göstermemiz gerekiyor biz _ekrandegis Key'i ile erişmek istiyoruz.
                              o zaman 
                                    sayacdegerigosterici( key :_ekrandegis ) diyeceğiz.
                                          Bu sayede aşağıda bulunan key değerline erişim sağlamış olduk ..

                                            Şimdi sayaç widgetının içine erişmek istersek :

                                            

                  */


/*
ÖNEMLİ NOT ! 

  EĞER WİDGETLAR BAŞKA DOSYALARDA TANIMLI İSE GİZLİ OLAMAMALI
  YANİ "_WİDGETİSMİ" ŞEKLİNDE OLMAMALI O ZAMAN ULAŞAMAYIZ !

  AMA NORMAL ŞEKİLDE TANIMLI İSE YANİ "WİDGETİSMİ" ŞEKLİNDE İSE ULAŞABİLİRİZ.

                                  AYNI DOSYADA GİZLİ OLMASI SORUN DEĞİL ! 

*/