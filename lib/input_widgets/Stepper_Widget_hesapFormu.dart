import 'package:flutter/material.dart';

class KayitFormu extends StatefulWidget {
  KayitFormu({Key? key}) : super(key: key);

  @override
  _KayitFormuState createState() => _KayitFormuState();
}
/*
Aşağıda erişmek kolay olsun diye stepleri baştan kendimiz tanımlayalım.

*/

int _aktif_step = 0;
String isim = "";
String mail = "";
String sifre = "";

class _KayitFormuState extends State<KayitFormu> {
  //Uygulamanın dinamik olması için buraya bir liste tanımlayalım
  List<Step> tumStepler = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hesap Oluştur."),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Stepper(
              steps: _tumstepler(),
              currentStep: _aktif_step, //Başlangıç adımı gibi düşün.
              onStepTapped: (kullanicinin_tikladigi) {
                //Burası kullanıcı eğer ekranda bir şeye tıklarasa
                //Ona ulaşmamızı sağlayan  kısım.
                //Mesela 3. sıraya tıklarsan aona ulaşalım diye.

                setState(
                  () {
                    _aktif_step = kullanicinin_tikladigi;
                  },
                );
              },
              onStepContinue: () {
                setState(() {
                  if (_aktif_step < 3) {
                    _aktif_step = _aktif_step + 1;
                  } else if (_aktif_step == 2) {
                    _aktif_step = 2;
                  } else {
                    _aktif_step = 2;
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (_aktif_step > 0) {
                    _aktif_step--;
                  } else {
                    _aktif_step = 0;
                  }
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  List<Step> _tumstepler() {
    List<Step> stepler = [
      Step(
          title: Text("Step Kullanıcı Adı"),
          state: StepState
              .indexed, //Başlıkların altındaki işaretler tik mi işaret mi sayımı olsun diye seçiyoruz
          isActive: true,
          content: TextFormField(
            decoration: InputDecoration(
                labelText: "Kullanıcı adı",
                hintText: "Username",
                border: OutlineInputBorder()),
            textAlign: TextAlign.start,
          ),
          subtitle: Text("Step Kullanıcı adı")),
      Step(
          title: Text("Step mail"),
          state: StepState
              .indexed, //Başlıkların altındaki işaretler tik mi işaret mi sayımı olsun diye seçiyoruz
          isActive: true,
          content: TextFormField(
            decoration: InputDecoration(
                labelText: "E-Mail adresi",
                hintText: "E-Mail adress",
                border: OutlineInputBorder()),
            textAlign: TextAlign.start,
          ),
          subtitle: Text("Step Email")),
      Step(
          title: Text("Step Şifre"),
          state: StepState
              .indexed, //Başlıkların altındaki işaretler tik mi işaret mi sayımı olsun diye seçiyoruz
          isActive: true,
          content: TextFormField(
            decoration: InputDecoration(
                labelText: "Kullanıcı şifre",
                hintText: "Password",
                border: OutlineInputBorder()),
            textAlign: TextAlign.start,
          ),
          subtitle: Text("Step Password")),
    ];
    return stepler;
  }
}
