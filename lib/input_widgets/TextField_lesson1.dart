import 'package:flutter/material.dart';

/*
TextField kullanıcılardan input almamızı sağlayan bir widget türüdür.
  En basit kullanımı ;

*/

class textfield_lesson_v1 extends StatelessWidget {
  const textfield_lesson_v1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Lesson1")),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType
                      .phone, //keyboardType ile ne tür veri alacağımızı seçeriz.
                  textInputAction: TextInputAction
                      .next, //Klavyede çıkan bilgiyi girdikten sonra okey vs gibi butonların çıkmasını sağlar
                  autofocus:
                      true, // açılır açılmaz burayı doldurması için klavye çıkar.
                  //maxLines: 5, //Kaç satır yazılacak maksimum
                  maxLength: 5, //Girilen verinin Uzunluğu kaç olacak

                  /*          TASARIM KISMI          */

                  decoration: InputDecoration(
                      labelText:
                          "Burası buton üstü yazı", //Burası butonun üstünde olan bilgiler.
                      hintText: "Burası gizli olan yazı buton içinde ",
                      labelStyle: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),

                      /*            3 FARKLI TARZ ICON KULLANIMI VAR  1. ICON KULLANIMI        */
                      icon: Icon(Icons.ac_unit)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    keyboardType: TextInputType
                        .phone, //keyboardType ile ne tür veri alacağımızı seçeriz.
                    textInputAction: TextInputAction
                        .next, //Klavyede çıkan bilgiyi girdikten sonra okey vs gibi butonların çıkmasını sağlar
                    decoration: InputDecoration(
                        labelText:
                            "Burası buton üstü yazı", //Burası butonun üstünde olan bilgiler.
                        hintText: "Burası gizli olan yazı buton içinde ",
                        labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),

                        /*            3 FARKLI TARZ ICON KULLANIMI VAR  2. ICON KULLANIMI        */
                        prefixIcon: Icon(Icons.ac_unit_sharp))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    keyboardType: TextInputType
                        .phone, //keyboardType ile ne tür veri alacağımızı seçeriz.
                    textInputAction: TextInputAction
                        .next, //Klavyede çıkan bilgiyi girdikten sonra okey vs gibi butonların çıkmasını sağlar
                    decoration: InputDecoration(
                        labelText:
                            "Burası buton üstü yazı", //Burası butonun üstünde olan bilgiler.
                        hintText: "Burası gizli olan yazı buton içinde ",
                        labelStyle: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),

                        /*            3 FARKLI TARZ ICON KULLANIMI VAR  3. ICON KULLANIMI        */
                        suffixIcon: Icon(Icons.next_plan))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType
                      .phone, //keyboardType ile ne tür veri alacağımızı seçeriz.
                  textInputAction: TextInputAction
                      .next, //Klavyede çıkan bilgiyi girdikten sonra okey vs gibi butonların çıkmasını sağlar
                  decoration: InputDecoration(
                      labelText:
                          "Burası buton üstü yazı", //Burası butonun üstünde olan bilgiler.
                      hintText: "Burası gizli olan yazı buton içinde ",
                      labelStyle: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),

                      /*            3 FARKLI TARZ ICON KULLANIMI VAR  3. ICON KULLANIMI        */
                      suffixIcon: Icon(Icons.next_plan),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(23)),
                      ),
                      filled:
                          true, // Filled ben bu widget'ı düzenlemek istiyorum demek istiyoruz burada
                      fillColor: Colors.yellow),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType
                      .phone, //keyboardType ile ne tür veri alacağımızı seçeriz.
                  textInputAction: TextInputAction
                      .next, //Klavyede çıkan bilgiyi girdikten sonra okey vs gibi butonların çıkmasını sağlar
                  decoration: InputDecoration(
                      labelText:
                          "Burası buton üstü yazı", //Burası butonun üstünde olan bilgiler.
                      hintText: "Burası gizli olan yazı buton içinde ",
                      labelStyle: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),

                      /*            3 FARKLI TARZ ICON KULLANIMI VAR  3. ICON KULLANIMI        */
                      suffixIcon: Icon(Icons.next_plan),
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(23)),
                      ),
                      filled:
                          true, // Filled ben bu widget'ı düzenlemek istiyorum demek istiyoruz burada
                      fillColor: Colors.yellow),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}
