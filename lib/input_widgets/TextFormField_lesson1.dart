import 'package:flutter/material.dart';

/*
Formun validate olması
değerlerin alınması
resetlenmesi gibi olayların olması için TextFormField Form isimli
widget i.ine alınmalı.


*/

class TextFormField_lesson_v1 extends StatefulWidget {
  TextFormField_lesson_v1({Key? key}) : super(key: key);

  @override
  _TextFormField_lesson_v1State createState() =>
      _TextFormField_lesson_v1State();
}

class _TextFormField_lesson_v1State extends State<TextFormField_lesson_v1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextFormField kullanma"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Form(
              autovalidateMode: AutovalidateMode
                  .always, //Validator'un çalışması için uygulamamız gerekiyor.
              child: Column(
                children: [
                  TextFormField(
                    initialValue: "Kubilay Bozak",
                    decoration: InputDecoration(
                        labelText: 'UserName',
                        hintText: 'UserName',
                        border: OutlineInputBorder()),
                    validator: (deger) {
                      //Burası kontrolcü diyebiliriz değeri kontrol ediyoruz
                      //mesela 4 karakterden büyük olsun diye kontrol isteyelim
                      if (deger!.length < 4) {
                        return 'Username should be bigger than 4';
                      } else {
                        return 'Correct';
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    /*
                      Burada kontrol etmek için kolaylık sağlayabiliriz.
                      Bir paket yüleyelim. 
                      Stringi incelek zor bu yöntem daha kolay.
                      import 'package:email_validator/email_validator.dart';
                      import edelim.
                      Bu paket null safty için çalışıyor onun için iptal ettim.

                    */
                    initialValue: "KubilayBozak@gmail.com",
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'E-Mail',
                        hintText: 'E-Mail',
                        border: OutlineInputBorder()),
                    validator: (deger) {
                      /*
                      if (deger!.isEmpty) {
                        return 'email boş olamaz';
                      } else if (!EmailValidator.validate(deger)) {
                        return 'Geçerli mail giriniz';
                      } else
                        return null;
                      */
                      if (deger!.length == 0) {
                        return 'email boş olamaz';
                      } else if (deger.contains('hotmail.com') |
                          deger.contains('gmail.com')) {
                        return null;
                      } else
                        return 'Geçerli mail giriniz';
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: "123456",
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'PassWord',
                        hintText: 'PassWord',
                        border: OutlineInputBorder()),
                    validator: (deger) {
                      if (deger!.length < 6) {
                        return 'Şifre ne az 6 karakter olmalı';
                      } else
                        return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
