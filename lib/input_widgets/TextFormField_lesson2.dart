import 'package:flutter/material.dart';

/*
Burada form içinde oluşturduğumuz verileri kaydetmek yada sıfırlamak istersek.
Öncelikle istediğimiz bilgileri birer değişkenlere atayalım.
  String _email="";
  String _username="";
  String password="";

      Atama yapmak için onSaved(deger){} adında bir method kullanabilir. Eğer istenen kurallara 
      uyuyor ve istenilen gibi input değerleri alıyorsak. 

Şimdi bilgileri bu şekilde elimizde tuttuk şimdi butona basınca bunların çalışmasını sağlamamız gerekir,
  Bunun için:
    Buton onPressed(){} methodunu kullnabiliriz.

      Buton'dan forma erişebilmek için Key ataması yapmamız gerekir.
        Bir sonraki ders daha anlamlı bunun için.
               final formkey = GlobalKey<FormState>(); Formun State değerlerini tutsun demek istiyoruz.
               Şimdi tüm bunları hallettikten sonra

                buton onpressed methoduna gidelim.

*/

class TextFormField_lesson_v2 extends StatefulWidget {
  const TextFormField_lesson_v2({Key? key}) : super(key: key);

  @override
  _TextFormField_lesson_v2State createState() =>
      _TextFormField_lesson_v2State();
}

class _TextFormField_lesson_v2State extends State<TextFormField_lesson_v2> {
  String _email = '', _password = '', _userName = '';
  String result = '';
  String _gemail = '', _gpassword = '', _guserName = '';
  final _formKey = GlobalKey<FormState>(); //Form bilgilerini tutsun demek.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Textform field kullanimi'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode
                  .always, //Validator'un çalışması için uygulamamız gerekiyor.
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    initialValue: 'Kubilay Bozak',
                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Username'),
                    onSaved: (deger) {
                      _userName = deger!;
                    },
                    validator: (deger) {
                      //Burası kontrolcü diyebiliriz değeri kontrol ediyoruz
                      //mesela 4 karakterden büyük olsun diye kontrol isteyelim
                      if (deger!.length < 4) {
                        return 'Username en az 4 karakter olmalı';
                      } else
                        return null;
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
                    initialValue: 'kubilaybozak@hotmail.com',
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Email'),
                    onSaved: (deger) {
                      _email = deger!;
                    },
                    validator: (deger) {
                      if (deger!.isEmpty) {
                        return 'email boş olamaz';
                      } else if (deger.contains("@hotmail.com")) {
                        return null;
                      } else
                        return 'Geçerli mail giriniz';
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    initialValue: '123456',
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Password'),
                    onSaved: (deger) {
                      _password = deger!;
                    },
                    validator: (deger) {
                      if (deger!.length < 6) {
                        return 'Şifre ne az 6 karakter olmalı';
                      } else
                        return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Username :  $_guserName "),
                  Text("_email :  $_gemail "),
                  Text("_password :  $_gpassword "),
                  ElevatedButton(
                    onPressed: () {
                      bool _validate = _formKey.currentState!.validate();
                      if (_validate) {
                        _formKey.currentState!.save();
                        result =
                            'username:$_userName\nemail:$_email\nSifre:$_password';
                        debugPrint(
                            'username:$_userName\nemail:$_email\nSifre:$_password');
                        print(
                            'username:$_userName\nemail:$_email\nSifre:$_password');

                        setState(() {
                          _gemail = _email;
                          _gpassword = _password;
                          _guserName = _userName;
                        });
                        _formKey.currentState!.reset();
                      }
                    },
                    child: Text('Onayla'),
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
