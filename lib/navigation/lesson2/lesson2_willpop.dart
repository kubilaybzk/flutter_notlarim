import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notlarim/navigation/lesson2/lesson2_red_page.dart';

void main() => runApp(lesson2_willpop());

class lesson2_willpop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Islemleri'),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              int? _gelenSayi = await Navigator.push<int>(
                context,
                CupertinoPageRoute(
                  builder: (redContext) => lesson2_red_page(),
                ),
              );
              print('Ana sayfadaki sayı $_gelenSayi');
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
            child: Text(
              'Kırmızı Sayfaya Gir IOS',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //Navigator.push(context, route);
              Navigator.of(context)
                  .push<int>(MaterialPageRoute(
                      builder: (context) => lesson2_red_page()))
                  .then((int? value) {
                debugPrint('Gelen sayı $value');
              });
            },
            style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
            child: Text(
              'Kırmızı Sayfaya Gir Android',
            ),
          ),
        ],
      )),
    );
  }
}
