import 'package:flutter/material.dart';

void main() {
  runApp(buttons());
}

class buttons extends StatelessWidget {
  const buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buttons Types"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    debugPrint("TextButton work");
                  },
                  child: Text("This is a Text Button")),
              TextButton.icon(
                  onPressed: () {
                    debugPrint("TextButton.icon work");
                  },
                  icon: Icon(Icons.follow_the_signs),
                  label: Text("This is a Text Button w/ icon")),
              ElevatedButton(
                  onPressed: () {
                    debugPrint("ElevatedButton work");
                  },
                  child: Text("This is a ElevatedButton Button")),
              ElevatedButton.icon(
                  onPressed: () {
                    debugPrint("ElevatedButton.icon work");
                  },
                  icon: Icon(Icons.follow_the_signs_outlined),
                  label: Text("This is a ElevatedButton icon ")),
              OutlineButton(
                onPressed: () {
                  debugPrint("OutlineButton work");
                },
                child: Text("OutlineButton is work"),
              ),
              OutlineButton.icon(
                  onPressed: () {
                    debugPrint("OutlineButton with icon work");
                  },
                  icon: Icon(Icons.follow_the_signs_rounded),
                  label: Text("This is a OutlineButton icon ")),
              dropdownbutons(),
              Container(height: 50, width: 240, child: popupmenum())
            ],
          ),
        ),
      ),
    );
  }
}

class dropdownbutons extends StatefulWidget {
  dropdownbutons({Key? key}) : super(key: key);

  @override
  _dropdownbutonsState createState() => _dropdownbutonsState();
}

class _dropdownbutonsState extends State<dropdownbutons> {
  String? _secilenSehir = null;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: DropdownButton<String>(
      hint: Text("L??tfen bir ??ehir se??ilin"),
      icon: Icon(Icons.self_improvement),
      underline: Container(
        color: Colors.red,
        height: 2,
      ),
      items: [
        DropdownMenuItem(
          child: Text("??stanbul"),
          value: '??stanbul',
        ),
        DropdownMenuItem(
          child: Text("Ankara"),
          value: 'Ankara',
        ),
        DropdownMenuItem(
          child: Text("Rize"),
          value: 'Rize',
        ),
        DropdownMenuItem(
          child: Text("Sivas"),
          value: 'Sivas',
        ),
        DropdownMenuItem(
          child: Text("??zmir"),
          value: '??zmir',
        ),
      ],
      value: _secilenSehir,
      onChanged: (String? x) {
        //G??nderilen de??erin de??i??mesi i??in gereken bir fonksiyon.
        setState(() {
          //SetState burada ana ekranda se??ildikten sonra o se??ilen de??erin g??z??kmesi i??in ayarlanm????.
          _secilenSehir = x!;
          debugPrint(_secilenSehir.toString());
        });
      },
    ));
  }
}

class popupmenum extends StatefulWidget {
  popupmenum({Key? key}) : super(key: key);

  @override
  _popupmenumState createState() => _popupmenumState();
}

class _popupmenumState extends State<popupmenum> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            debugPrint("Se??ilen ??ehir " + sehir.toString());
          });
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("??stanbul"),
              value: '??stanbul',
            ),
            PopupMenuItem(
              child: Text("Ankara"),
              value: 'Ankara',
            ),
            PopupMenuItem(
              child: Text("??zmir"),
              value: '??zmir',
            ),
            PopupMenuItem(
              child: Text("Sivas"),
              value: 'Sivas',
            ),
            PopupMenuItem(
              child: Text("Rize"),
              value: 'Rize',
            ),
          ];
        },
      ),
    );
  }
}
