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
import 'package:flutter_notlarim/navigation/lesson8/lesson8_orange_page.dart';
import 'package:flutter_notlarim/navigation/lesson8/lesson8_routes.dart';
import 'package:flutter_notlarim/navigation/lesson8/student_detay_lesson8.dart';
import 'package:flutter_notlarim/navigation/lesson8/student_list_lesson8.dart';

class RouteGenerator_lesson8 {
  static Route<dynamic>? onGenerateRoute_methodum_lesson8(
      RouteSettings settings) {
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
//////////////////////////Ders 6 ////////////////////
/*
Şimdi burada bilgileri alıyoruz .
Ama bu bilgileri aktarmamız gerekiyor. O zaman
      MaterialPageRoute
      CupertinoPageRoute
          Widgetlarını return ederken setting değerlerinide yollayamamız lazım.
              Parametre olarak yollarız.
                Gidilecek Screen ve Setting olarak elemanları yollamamız gerekir.

return MaterialPageRoute(
              builder: (context) => AnaSayfa(), settings: settings);

              gibi
              gibi

              Şimbi bu bigiyi 
              student_list sayfasına yolladık orada bu bilgiye ulaşmak için kullanacağımız yöntem 
              student_list sayfasında bahsediliyor ..
              
*/
      case '/':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(
              builder: (context) => AnaSayfa(), settings: settings);
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(
              builder: (context) => AnaSayfa(), settings: settings);
        }
      case 'lesson5_orange_page':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(
              builder: (context) => AnaSayfa(), settings: settings);
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(
              builder: (context) => AnaSayfa(), settings: settings);
        }

      case 'Turuncu_Sayfamız':
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(
              builder: (context) => lesson8_orange_page(), settings: settings);
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(
              builder: (context) => lesson8_orange_page(), settings: settings);
        }

      case 'OgrenciListesi':
        debugPrint(settings.name); //Bu hangi sayfaya gideceğimizi söyler
        debugPrint(settings.arguments.toString());
        //Bu bize o butondan gelen değerleri söyler.
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(
              builder: (context) => OgrenciListesi(), settings: settings);
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(
              builder: (context) => OgrenciListesi(), settings: settings);
        }

      case '/student_detay':
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(
              builder: (context) => OgrenciDetay(
                    secilenOgrenci: parametredekiOgrenci,
                  ),
              settings: settings);
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(
              builder: (context) => OgrenciDetay(
                    secilenOgrenci: parametredekiOgrenci,
                  ),
              settings: settings);
        }

      case 'student_detay':
        var parametredekiOgrenci = settings.arguments as Ogrenci;
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          //Platform ios ise ios efekti içeren tasarım çalışsın
          debugPrint("//Platform ios ise ios efekti içeren tasarım çalışsın");
          return CupertinoPageRoute(
              builder: (context) => OgrenciDetay(
                    secilenOgrenci: parametredekiOgrenci,
                  ),
              settings: settings);
        } else {
          //Platform android ise android efekti içeren tasarım çalışsın
          debugPrint(
              "//Platform android ise android efekti içeren tasarım çalışsın");
          return MaterialPageRoute(
              builder: (context) => OgrenciDetay(
                    secilenOgrenci: parametredekiOgrenci,
                  ),
              settings: settings);
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
