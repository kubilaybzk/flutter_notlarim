import 'package:flutter/material.dart';

void main() {
  runApp(Elemanlar());
}

class Elemanlar extends StatelessWidget {
  const Elemanlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          accentColor: Colors.black,
          primaryColor: Colors.yellow,
        ),
        home: Scaffold(
            appBar: AppBar(
                title: Text(
              "Image Wıdgets",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            body: image_widgets()));
  }
}

class image_widgets extends StatefulWidget {
  const image_widgets({Key? key}) : super(key: key);

  @override
  _image_widgetsState createState() => _image_widgetsState();
}

class _image_widgetsState extends State<image_widgets> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Image.asset(
                'assets/images/gs.jpg',
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(border: Border.all(width: 5)),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.network(
                  'https://www.trtspor.com.tr/resimler/312000/312469.jpg',
                  fit: BoxFit.cover),
              decoration: BoxDecoration(border: Border.all(width: 5)),
            ),
          ),
        ],
      ),
    );
  }
}
