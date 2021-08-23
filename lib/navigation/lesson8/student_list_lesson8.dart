import 'package:flutter/material.dart';

class OgrenciListesi extends StatelessWidget {
  const OgrenciListesi({Key? key}) : super(key: key);

/*Şimdi bize  bilgiler setting ile geldi biz bu bilgilere nasıl erişeceğimize bakalım;

    ModalRoute.of(context).settings.arguments
            kullanarak bu bilgilere ulaşabiliriz. ama bunun tip olarak belirtmemiz gerekir. M
                Mesela ; 
                    ModalRoute.of(context).settings.arguments as int;

                        Daha sonra bu değeri bir değişkene eşitlememiz lazım ;

                              int? gelen_değer = ModalRoute.of(context)!.settings.arguments as int;


                İlk yapmamız gereken ; 




*/

  @override
  Widget build(BuildContext context) {
    int? elemanSayisi = ModalRoute.of(context)!.settings.arguments as int;
    debugPrint("Gelen Değer : $elemanSayisi");

    List<Ogrenci> tumOgrenciler = List.generate(
        elemanSayisi,
        (index) =>
            Ogrenci(index + 1, 'Isim : ${index + 1}', 'Soyisim ${index + 1}'));

    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenci Listesi'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              var secilen = tumOgrenciler[index];
              Navigator.pushNamed(context, 'student_detay', arguments: secilen);
            },
            leading: CircleAvatar(
              child: Text(tumOgrenciler[index].id.toString()),
            ),
            title: Text(tumOgrenciler[index].isim),
            subtitle: Text(tumOgrenciler[index].soyisim),
          );
        },
        itemCount: elemanSayisi,
      ),
    );
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}
