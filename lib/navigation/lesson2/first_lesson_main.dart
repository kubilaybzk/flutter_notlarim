import 'package:flutter/material.dart';
import 'package:flutter_notlarim/navigation/losson1/red_page.dart';
import 'package:flutter/cupertino.dart';

main() {
  runApp(first_lesson_main());
}

/*

Genel olarak çalışma mantığı stack olarak 
              Yani tabakları üst üste koymak gibi düşünelim.

              MESELA 3 SAYFAMIZ VAR
                1. Sayfa Main
                2. Sayfa Kırmızı
                3. Sayfa Mavi

                Main'den kırmızıya gidersen Stack.


              Kırmızı
              Main

              Kırmızıdan eğer Maviye geçeceksen yığın

              Mavi
              Kırmızı
              Main
                  Olarak ayarlanır.



*/
class first_lesson_main extends StatelessWidget {
  const first_lesson_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Page First Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                int _PopReturneden = await Navigator.push(context,
                    CupertinoPageRoute(builder: (redContext) => red_page()));
                debugPrint("Gelen (Return eden) değer ${_PopReturneden}");
              },
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              child: Text(
                "Push Red Page IOS",
                style: TextStyle(color: Colors.yellow),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
              onPressed: () async {
                /*

Burada bilmemiz gereken Navigator işlemlerinde 
  kullanılan sınıfı adı Navigator burada push yani
    başka sayfaya geçiş işlemlerini yapmak
      için iki yöntem var 

      1   
        Navigator.push(context,route);
      2 
        Navigator.of(context).push(route);

  Bunların ikiside birebir aynı . Sadece yazımları farklı
    Şimdiye kadar bilmeden kullandık aslında bunu body: Scaffold() kısmında 


Genel olarak kurulma mantığı

 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>red_page()));
                                      Context Tree'den bilglere ulaşmak için isteniyor ve 
                                      ekspression sayesinde diğer sayfaya push edebiliyoruz.
                                      
                  */

                //Navigator.push(context, route);
                int _PopReturneden = await Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => red_page()));

                debugPrint("Gelen (Return eden) değer ${_PopReturneden}");
              },
              child: Text(
                "Push Red Page ANDROID",
                style: TextStyle(color: Colors.yellow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
Navigator.of(context).pop(_rastgelesayi);

ile biz _rastgelesayı adında bir değişken yollandı 
push methodu ile bu değişkene ulaşabiliriz.
   onPressed: ()async {
     await _Popreturneden= await Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => red_page()));

}

Bu şekilde getirilen değere ulaşabiliriz.

 */