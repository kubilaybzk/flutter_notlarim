import 'package:flutter/material.dart';
import 'package:flutter_notlarim/navigation/lesson7/student_list_lesson7.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({required this.secilenOgrenci, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ogrenci detay'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(secilenOgrenci.id.toString()),
              Text(secilenOgrenci.isim),
              Text(secilenOgrenci.soyisim),
            ],
          ),
        ),
      ),
    );
  }
}
