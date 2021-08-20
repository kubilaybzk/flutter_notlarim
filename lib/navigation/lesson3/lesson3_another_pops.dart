import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notlarim/navigation/lesson3/lesson3_red_page.dart';
import 'package:flutter_notlarim/navigation/lesson3/lesson3_blue_page.dart';

void main() => runApp(lesson3_another_pops());

class lesson3_another_pops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App 3',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lesson3_another_pops'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              int? _gelenSayi = await Navigator.push<int>(
                context,
                CupertinoPageRoute(
                  builder: (redContext) => lesson3_red_page(),
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
                      builder: (context) => lesson3_red_page()))
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
                  MaterialPageRoute(builder: (context) => lesson3_blue_page()));

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
          )
        ],
      )),
    );
  }
}
