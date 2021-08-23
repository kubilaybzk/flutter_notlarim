import 'package:flutter/material.dart';

void main() {
  runApp(row_column_lessons());
}

class row_column_lessons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return row_elements();
    //return column_elements();
    return main_axis_size_examp();
  }
}

class row_elements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Rows and Columns"),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.orange),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.yellow),
                )
              ],
            ),
          ),
        ));
  }
}

class column_elements2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Rows and Columns"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.orange),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.yellow),
                )
              ],
            ),
          ),
        ));
  }
}

class column_elements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Rows and Columns"),
          ),
          body: Center(child: with_childern())),
    );
  }
}

class with_childern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.add_circle,
          size: 80,
          color: Colors.red,
        ),
        SizedBox(
          height: 24,
        ),
        Icon(
          Icons.add_circle,
          size: 80,
          color: Colors.red,
        ),
        SizedBox(
          height: 24,
        ),
        Icon(
          Icons.add_circle,
          size: 80,
          color: Colors.red,
        ),
        SizedBox(
          height: 24,
        ),
        Icon(
          Icons.add_circle,
          size: 80,
          color: Colors.red,
        ),
      ],
    );
  }
}

/*Burada bilmemiz gerkeen ilk şey bu row yada column widgetları bulundukları satıra tamamen yayılıyor
yani bulundukları her bir satır için sonsuz boyuta ulaşıyor bunu engellemek için söyle bir yol kullanabiliriz.
      */

/* MainAxisSize : > Anlamı Bulunduğu ilgili satırın yani ana eksen
         MainAxisSize. =>
         
         How much space should be occupied in the main axis.
During a flex layout, available space along the main axis is allocated to children. 
After allocating space, there might be some remaining free space. 
This value controls whether to maximize or minimize the amount of free space, 
subject to the incoming layout constraints.

max → const MainAxisSize
Maximize the amount of free space along the main axis, subject to the incoming layout constraints.

min → const MainAxisSize
Minimize the amount of free space along the main axis, subject to the incoming layout constraints.

         
          */

class main_axis_size_examp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Rows and Columns"),
          ),
          body: Container(
            color: Colors.pink,
            child: Row(
              mainAxisSize: MainAxisSize
                  .max, // Burayı max min yaparak değişimi görebiliriz.

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.orange),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.yellow),
                )
              ],
            ),
          ),
        ));
  }
}


/*

MainAxisAlignment 


How the children should be placed along the main axis.

                      Cocukların ilgili satırda nasıl gözükeceğini söylüyor bize bu özellik örnek olarak ;

center → const MainAxisAlignment
Place the children as close to the middle of the main axis as possible.
                      Başlangıçtan itibaren sıralama yapar yani ilgili satırın solundan itibaren .

end → const MainAxisAlignment
Place the children as close to the end of the main axis as possible.
                      Bitişten itibaren sıralama yapar yani ilgili satırın sonunda. 

If this value is used in a horizontal direction, a TextDirection must be available to determine if the end is the left or the right.

If this value is used in a vertical direction, a VerticalDirection must be available to determine if the end is the top or the bottom.

const MainAxisAlignment(1)
spaceAround → const MainAxisAlignment
Place the free space evenly between the children as well as half of that space before and after the first and last child.

const MainAxisAlignment(4)
spaceBetween → const MainAxisAlignment
Place the free space evenly between the children.

const MainAxisAlignment(3)
spaceEvenly → const MainAxisAlignment
Place the free space evenly between the children as well as before and after the first and last child.

const MainAxisAlignment(5)
start → const MainAxisAlignment
Place the children as close to the start of the main axis as possible.

If this value is used in a horizontal direction, a TextDirection must be available to determine if the start is the left or the right.

If this value is used in a vertical direction, a VerticalDirection must be available to determine if the start is the top or the bottom.

const MainAxisAlignment(0)
values → const List<MainAxisAlignment>
A constant List of the values in this enum, in order of their declaration.

         
          */


          