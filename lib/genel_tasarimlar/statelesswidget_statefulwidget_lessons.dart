import 'package:flutter/material.dart';

void main() {
  runApp(statelesswidget_lessons());
}

int _sayac = 0;

class statelesswidget_lessons extends StatefulWidget {
  const statelesswidget_lessons({Key? key}) : super(key: key);

  @override
  _statelesswidget_lessonsState createState() =>
      _statelesswidget_lessonsState();
}

class _statelesswidget_lessonsState extends State<statelesswidget_lessons> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.red, primaryColor: Colors.lime),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Buton oyunu",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Butona Basılma miktarı",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 45),
                ),
                Text(
                  _sayac.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Basıldı");
            setState(() {
              _sayac = _sayac + 1;
            });
            debugPrint(_sayac.toString());
          },
          child: Icon(Icons.add_circle),
          focusColor: Colors.black,
          foregroundColor: Colors.black,
          hoverColor: Colors.lime,
        ),
      ),
    );
  }
}


/*
Flutter içerisinde ise bu sınıf ekran ilk oluşturulduğunda
 bir kez çalışan ve orada sabit bir şekilde kalan widget’lar için tasarlanmış.
  Örnek verecek olursak Text bir stateless widget’dir ve 
  uygulama oluştuğu anda biz onu ekranın en tepesine koyarız, 
  onunla herhangi bir işlem yapmayız ve o hala orada durmaya devam eder.
   Ta ki uygulama kapatılana kadar.

Stateful ise değişken halinde olabilecek widget’ler için kullanılır. 
Örnek verecek olursak ekranımızda ortadaki butona tıkladıkça sayının 
artmasını istiyoruz(Yeni bir proje oluşturduğumuz da otomatik gelen uygulama gibi…)
 sayının uygulama içinde kullanıcı tıkladıkça 
artmasını göstermek için bu sınıfı stateful olarak yapmak zorundayız.


Bu değişimi göstermek için .
    setState(   () {
                      }

kısmı içinde bu değişim gösterilmeli. 
*/

/*






class statelesswidget_lessons extends StatelessWidget {
  const statelesswidget_lessons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.red, primaryColor: Colors.lime),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buton oyunu"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Butona Basılma miktarı",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 45),
                ),
                Text(
                  _sayac.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Basıldı");
            _sayac = _sayac + 1;
            debugPrint(_sayac.toString());
          },
          child: Icon(Icons.add_circle),
          focusColor: Colors.black,
          foregroundColor: Colors.black,
          hoverColor: Colors.lime,
        ),
      ),
    );
  }
}



*/
