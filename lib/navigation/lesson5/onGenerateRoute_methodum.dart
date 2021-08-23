/*

Normal şartlarda biz bir rota oluşturmuştuk eğer
tanıma uymayan yani

    routes{

    }
    içinde olmayan bir değer yoksa bizim uygulamamız 
          onUnknownRoute adında bir methoda gidiyorduk.

          ama bunlar arasında bir rota oluşturmakta mevcut.
            Eğer rota tanıttıysak öncelikle
                  routes kısmına bakıyor burada yoksa
                  Şimdi burada öğreneceğimiz kısma bakıyor eğer buradada yoksa 
                        onUnknownRoute();
                          kısmına bakıyor.


            Şimdi programı genel olarak anlamak için 
                lesson5_routes içinde bulunan 
                  
                  routes{}
                    kısmını yorum olarak alalım.




*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_notlarim/navigation/lesson5/lesson5_routes.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute_methodum(RouteSettings settings) {
    //settings.name // gidilecek rota
    //settings.arguments //Gönderilecek  verileriler için kullanılacak yapı

    switch (settings.name) {

/* 
Eğer gelen rota 
  '/' içeriyorsa
    Buraya yönelndir diyoruz.
defaultTargetPlatform  yapısı sayesinde hangi platforma
 göre ise onun kontrolünü yapabiliyoruz

 mesela aşağıda 

 

*/

      case '/':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(builder: (context) => AnaSayfa());
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(builder: (context) => AnaSayfa());
        }
      case 'lesson5_orange_page':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(builder: (context) => AnaSayfa());
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(builder: (context) => AnaSayfa());
        }

      case 'Turuncu_Sayfamız':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(builder: (context) => AnaSayfa());
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(builder: (context) => AnaSayfa());
        }

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text("EROR"),
                  ),
                ));
    }
  }
}
