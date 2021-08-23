import 'package:flutter/material.dart';

class custom_scrool_view_notes extends StatelessWidget {
  const custom_scrool_view_notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text("CustomScrollView kullanma"),
              expandedHeight:
                  200, //Burası ilk açıldığında kaydırma olmadan boyutun ne kadar görüneceğini belirtiyor.
              floating: true,
              snap: true,
              shadowColor: Colors.black,
              actionsIconTheme: IconThemeData(
                size: 240,
                color: Colors.white,
              ),
              excludeHeaderSemantics: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset('assets/images/gs.jpg'),
                title: Text(
                  "Kullanıcı_Adı",
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            SliverList(
              //Delegate burada zorunlu değişken

              delegate: SliverChildListDelegate(
                  //
                  Sliver_elemanlarim),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> get Sliver_elemanlarim {
    return [
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      ),
      Card(
        color: Colors.blue.shade200,
        shadowColor: Colors.black,
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: true,
          leading: Icon(Icons.add),
          title: Text("User Names"),
          subtitle: Text("UserName"),
          trailing: Icon(Icons.real_estate_agent),
        ),
      )
    ];
  }
}
