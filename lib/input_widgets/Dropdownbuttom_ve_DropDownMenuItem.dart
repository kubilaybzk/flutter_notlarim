import 'package:flutter/material.dart';

class DropDownElements extends StatefulWidget {
  DropDownElements({Key? key}) : super(key: key);

  @override
  _DropDownElementsState createState() => _DropDownElementsState();
}

String secilenRenk = "";
List<String> sehirler = ["Ankara", "Bursa", "Izmir", "Hatay"];
String secilenSehir = "Ankara";

/*
DropdownButton ve DropdownMenü kullanımı : 
  DropdownButton<String>(
    items:[DropdownMenuItem<String>(child:), //Buraya menünün elemanları yazılır.
  
  ],

  )

*/

class _DropDownElementsState extends State<DropDownElements> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Dropdownbuttom ve DropdownMenu Lessons")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.red,
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Text("Kırmızı"),
                      ],
                    ),
                    value: "Kirmizi",
                  ),
                  DropdownMenuItem<String>(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.blue,
                          margin: EdgeInsets.only(left: 10),
                        ),
                        Text("Mavi"),
                      ],
                    ),
                    value: "Mavi",
                  ),
                  DropdownMenuItem<String>(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 24,
                          height: 24,
                          color: Colors.green,
                          margin: EdgeInsets.only(right: 10),
                        ),
                        Text("Yeşil"),
                      ],
                    ),
                    value: "Yesil",
                  ),
                ],
                onChanged: (String? secilen) {
                  setState(() {
                    secilenRenk = secilen!;
                    debugPrint(secilenRenk);
                  });
                },
                hint: Text("Seciniz"),
                value: secilenRenk,
              ),
              DropdownButton<String>(
                items: sehirler.map((oankiSehir) {
                  return DropdownMenuItem<String>(
                    child: Text(oankiSehir),
                    value: oankiSehir,
                  );
                }).toList(),
                onChanged: (s) {
                  setState(() {
                    secilenSehir = s!;
                  });
                },
                value: secilenSehir,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
