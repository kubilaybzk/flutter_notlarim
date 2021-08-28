import 'package:flutter/material.dart';

/*
BİZ BURADA StatelessWidget kullanırsak burada veri almak istiyoruz demektir.
    Ya veri almak yada uygulama ilk açıldığında bir veri atmak istersek kontrol denen yapıyı kullanırız.
      Aynı şeyler TExtformField içinde kullanılır. Bu zor olan kısmı TextForm kullanmak istemiyorsak bunları yaparız
        Şimdi ilk olarak yapımızı statefull ayarlayalım.
          Controller tanımlama:
            TextEditingController adında bir  - controler sınıfımız var. Bundan nesne üretelim.
              Bunu e-mail kontrolu için kullanmak isteyelim önce satır 21'de bunu tanımlayalım.
                StatefulWidget larda bunları init state alanında bunun initialize etmeliyiz.
                  init state => İlk açıldığında çalışan yer burası.Bir kez çalışır Bundan dolayı burası daha mantıklı


*/

class TextField_lesson_2 extends StatefulWidget {
  const TextField_lesson_2({Key? key}) : super(key: key);

  @override
  _TextField_lesson_2State createState() => _TextField_lesson_2State();
}

class _TextField_lesson_2State extends State<TextField_lesson_2> {
  late TextEditingController
      _emailController; //Burada controller değerimizi oluşturuyoruz.
  @override
  void initState() {
    _emailController = TextEditingController(
        text: 'test@test.com'); //Burada tanımlama yapıyoruz.
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Lesson 2")),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Container(
            child: Column(
              children: [
                TextField(
                  controller:
                      _emailController, //Burada Textfield içine tanımlıyoruz.
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  autofocus: true,
                  maxLines: 1,
                  maxLength: 20,
                  onChanged: (String deger) {
                    if (deger.length > 3) {
                      setState(() {
                        _emailController.value = TextEditingValue(
                          text: deger,
                          selection:
                              TextSelection.collapsed(offset: deger.length),
                        );
                      });
                    }
                  },
                  cursorColor: Colors.pink,
                  decoration: InputDecoration(
                    labelText: 'Label text',
                    hintText: 'Email giriniz',
                    //icon: Icon(Icons.add),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.access_alarms_outlined),
                    filled: true,
                    fillColor: Colors.yellow,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(_emailController.text),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _emailController.text =
                "Butona bastım değişti"; //Sadece bunu yaparsak textfield içindeki değer değişecek aşağıda bulunan text değişmeyecek.
            //Text kısmının değişmesi için setState kullanmalıyız.
            setState(() {});
          },
        ),
      ),
    );
  }
}
