import 'package:flutter/material.dart';

/*
Öncelikle  Checkbox widget kullanımına bakalım .
    Öncelikle bu bir true yada false değeri yollar.
      Eğer seçilmişse True seçilmemiş ise False gibi.
        Bunun için bir değer tanımlamamız gerekmekte.
          Mesela Checkbox_kotnrol olarak bir değişken tanımlayalım.
*/
class checkbox_radio_lesson extends StatefulWidget {
  checkbox_radio_lesson({Key? key}) : super(key: key);

  @override
  _checkbox_radio_lessonState createState() => _checkbox_radio_lessonState();
}

bool Checkbox_kontrol = false; //Başlangıç değeri olarak false atayalım.
String Checkbox_kontrol_text = "İlk İşlem Adımı";

class _checkbox_radio_lessonState extends State<checkbox_radio_lesson> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radio ve Checkbox Lesson 1"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Chechbox(), Radio_widget(), SwitchList_lesson()],
          ),
        ),
      ),
    );
  }

  CheckboxListTile Chechbox() {
    return CheckboxListTile(
      value: Checkbox_kontrol,
      onChanged: (gelen) {
        setState(() {
          Checkbox_kontrol = gelen!;
          KontrolFonks(gelen);
        });
      },
      title: Text(Checkbox_kontrol_text), // Başlık anlamına geliyor.
      activeColor: Colors.red, //Seçilince ne renk olsun ayarlıyoruz
      subtitle: Text("Burası Sub Title"),
      secondary: Icon(Checkbox_kontrol == true
          ? Icons.download_done_outlined
          : Icons.sms_failed),
    );
  }

  void KontrolFonks(bool gelen) {
    if (gelen == true) {
      debugPrint("Değer Seçildi");
      Checkbox_kontrol_text = "Değer Seçildi";
    } else {
      debugPrint("Değer seçilmedi.");
      Checkbox_kontrol_text = "Değer seçilmedi";
    }
  }
}

class Text_Duzenle extends StatefulWidget {
  final bool gelen_bilgi;
  Text_Duzenle({required this.gelen_bilgi, Key? key}) : super(key: key);

  @override
  _Text_DuzenleState createState() => _Text_DuzenleState();
}

class _Text_DuzenleState extends State<Text_Duzenle> {
  @override
  Widget build(BuildContext context) {
    return Text(Checkbox_kontrol_text);
  }
}

/*

Radio Kullanımı. 
    Radio biden çok değer verip seçim istediğimiz zaman kullandığımız widget türü.
      Liste olarak  değerler veririz ve kullanıcı seçer
    RadioListTile(value: value, groupValue: groupValue, onChanged: onChanged)
        3 Farklı değişken istiyor .
          Şimdi bu konuya girmeden önce Türkiyenin şehirlerini seçtirmek isteyelim kullanıcıya
                Biz Geri dönüş tipi olarak int değer isteyebiliriz. Yada plaka  seçmesini ister geri dönüş olarak
                    string değer isteyebiliriz.
                        Bunun için ;
                          RadioListTile<String>(value: value, groupValue: groupValue, onChanged: onChanged)
                           RadioListTile<int>(value: value, groupValue: groupValue, onChanged: onChanged)

                            Value: Seçilen Değer 
                                Mesela Şehiler için istanbul ankara izmir vs...
                                groupValue : Bu değerlerin hepsinin sonucunda seçilen değeri return etmek için
                                    Bir nevi genel isimlendirme gibi düşünelim.
                                    Bunu widget içinde tanımlamalıyız  !! 

                                      onChanged::
                                        EĞER SET STATE AYARLANMAZ İSE SEÇİMLER EKRANDA GÖZÜKMEZ.



*/

class Radio_widget extends StatefulWidget {
  Radio_widget({Key? key}) : super(key: key);

  @override
  _Radio_widgetState createState() => _Radio_widgetState();
}

String sehirler = "";

class _Radio_widgetState extends State<Radio_widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RadioListTile<String>(
              value: "İstanbul",
              title: Text("İstanbul"),
              groupValue: sehirler,
              subtitle: Text("İstanbul Marmara Bölgesindedir."),
              secondary: Icon(Icons.ac_unit),
              isThreeLine: true,
              controlAffinity: ListTileControlAffinity.platform,
              activeColor: Colors.green,
              selectedTileColor: Colors.red,
              onChanged: (deger) {
                setState(() {
                  sehirler = deger!;
                  debugPrint("Seçilen Değer . $deger");
                });
              }),
          RadioListTile<String>(
              value: "Ankara",
              title: Text("Ankara"),
              groupValue: sehirler,
              subtitle: Text("Ankara İç Anadolu Bölgesindedir."),
              secondary: Icon(Icons.ac_unit),
              isThreeLine: true,
              controlAffinity: ListTileControlAffinity.platform,
              activeColor: Colors.green,
              selectedTileColor: Colors.red,
              onChanged: (deger) {
                setState(() {
                  sehirler = deger!;
                  debugPrint("Seçilen Değer . $deger");
                });
              }),
          RadioListTile<String>(
              value: "İzmir",
              title: Text("İzmir"),
              groupValue: sehirler,
              subtitle: Text("İzmir Ege Bölgesindedir."),
              secondary: Icon(Icons.ac_unit),
              isThreeLine: true,
              controlAffinity: ListTileControlAffinity.platform,
              activeColor: Colors.green,
              selectedTileColor: Colors.red,
              onChanged: (deger) {
                setState(() {
                  sehirler = deger!;
                  debugPrint("Seçilen Değer . $deger");
                });
              }),
        ],
      ),
    );
  }
}

/*

SwitchListTile kullanımı.
    kullanımı radio ile neredeyse tamamen aynı.
    SwitchListTile(value: value, onChanged: onChanged)

      SwitchListTile.adaptive(value: value, onChanged: onChanged)(value: value, onChanged: onChanged)
        Bu ios için buna pek girmedik derste. 

    

*/

class SwitchList_lesson extends StatefulWidget {
  SwitchList_lesson({Key? key}) : super(key: key);

  @override
  _SwitchList_lessonState createState() => _SwitchList_lessonState();
}

bool Switch_degeri = false;

class _SwitchList_lessonState extends State<SwitchList_lesson> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SwitchListTile(
            value: Switch_degeri,
            onChanged: (deger) {
              setState(() {
                Switch_degeri = deger;
              });
            },
            title: Switch_degeri == false
                ? Text("Kullanıcı onaylamadı")
                : Text("Kullanıcı Onayladı"),
            subtitle: Switch_degeri == false
                ? Text("Subtitle Kullanıcı onaylamadı")
                : Text(" Subtitle Kullanıcı Onayladı"),
            secondary: Icon(Icons.read_more),
          ),
        ],
      ),
    );
  }
}
