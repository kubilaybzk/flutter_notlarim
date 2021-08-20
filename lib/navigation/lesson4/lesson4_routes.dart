import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notlarim/navigation/lesson4/lesson4_red_page.dart';
import 'package:flutter_notlarim/navigation/lesson4/lesson4_blue_page.dart';
import 'package:flutter_notlarim/navigation/lesson4/lesson4_orange_page.dart';

void main() => runApp(lesson4_routes());

class lesson4_routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lesson4_routes',
      //home: AnaSayfa(),     /* KÖK DİZİN KULLANILACAKSA BURASI İPTAL EDİLMELİ */
      routes: {
        "Kırmızı_sayfamız": (context) => lesson4_red_page(),
        "Mavi_sayfamız": (context) => lesson4_blue_page(),
        "Turuncu_Sayfamız": (context) => lesson4_orange_page(),
        "/": (context) => AnaSayfa(), /* KÖK DİZİN */

        /*
        Buraya ulaşılabilecek bütün sayfaları 
              isim -> fonksiyon olarak
                mapliyoruz.
        


        */
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text("EROR"),
                ),
              )),

      /*

Eğer verilen rota'da hata varsa o rota yoksa o rotaya giderken sorun yaşıyorsa uygulama çöker
Bunu engellemek için olmayan rotalarda 
    çıkmasını sağlayacağımız bir main rota olması gerekir.
        Bunu sağlamak için  onUnknownRoute kullanılır.


onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(
                  child: Text("EROR"),
                ),
              ))


    */
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lesson4_routes'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              int? _gelenSayi = await Navigator.push<int>(
                context,
                CupertinoPageRoute(
                  builder: (redContext) => lesson4_red_page(),
                ),
              );
              print('Ana sayfadaki sayı $_gelenSayi');
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            child: Text(
              'Kırmızı Sayfaya Gir IOS',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.of(context)
                  .push<int>(MaterialPageRoute(
                      builder: (context) => lesson4_red_page()))
                  .then((int? value) {
                debugPrint('Gelen sayı $value');
              });
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Kırmızı Sayfaya Gir Android',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              /*
                  Eğer stack içinde başka bir sayfa varsa 
                  pop yapsın elemanı çıkarsın
                  eğer yoksa çıkarmasın için kullanıyoruz.
                  Mesela bu uygulama için maybepop yerine pop kullanırsak 
                  uygulama siyah ekrana geçiyor.

                  Ama maybe pop kullanırsak 

                */
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Maybe Pop olmadan pop yapma ',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
              /*
                  Eğer stack içinde başka bir sayfa varsa 
                  pop yapsın elemanı çıkarsın
                  eğer yoksa çıkarmasın için kullanıyoruz.
                  Mesela bu uygulama için maybepop yerine pop kullanırsak 
                  uygulama siyah ekrana geçiyor.

                  Ama maybe pop kullanırsak

                    Burada uygulama direk siyah ekrana düşmeyecek.
                     

                */
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Maybe Pop kullanma yapma ',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (Navigator.of(context).canPop()) {
                print("Geri dönebilecek");
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
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => lesson4_blue_page()));

              /*
                  Normalde 
                  Navigator.of(context)
                  .push<int>(MaterialPageRoute(
                      builder: (context) => lesson3_red_page()))
                  .then((int? value) {
                debugPrint('Gelen sayı $value');

                Kullanarak push işlemi yapabiliyoruz.
                      yada geri dönebiliyoruz FAKAT !

                        PushReplacement geri dönüş yapmıyor tek bir sayfaya çıkarıyor 
                          geri dönemezsin.
                            Yani stack içinde son eleman neyse stack içinde sadece o kalıyor.

                              Mesela giriş yaptı geri butonuna basınca kullanıcı bir daha geri dönüp giriş sayfasını görmemsi gerekiyor
                                  o zaman bu yöntemi kullanırız.

                */
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'PushReplacement kullanma  ',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('Kırmızı_sayfamız');
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            child: Text(
              'Routes (PushNamed) kullanma  ',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('Kırmızı_sayfamız_HATA İÇİN');
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            child: Text(
              'Routes (PushNamed) kullanma HATALI  ',
            ),
          )
        ],
      )),
    );
  }
}


/*


return MaterialApp(
      title: 'Lesson4_routes',
      home: AnaSayfa(),
      routes: {
        "/Kırmızı_sayfamız" : (context) => lesson4_red_page(),
        "/Mavi_sayfamız"    :  (context) => lesson4_blue_page(),
        "/"                 :(context) => AnaSayfa(),

Genelde bütün isimlerin başına / eklenir . Bunun amacı kök dizine göre ayarlamak.
 "/" Kök dizin anlamına gelir 

    ÖNEMLİ
        EĞER "/" KULLANACAKSAK HATA ALIRIZ BUNUN SEBEBİ 
                  home: AnaSayfa(), SATIRININ OLMASI EĞE BUNU İPTAL EDERSEK HATA ALMAYIZ.


*/