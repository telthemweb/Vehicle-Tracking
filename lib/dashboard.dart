import 'package:flutter/material.dart';
// import 'package:vtsproject/mapview.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xff6200ea),
          elevation: 0.5,
          title: new Text(
            "Dashboard",
            style: new TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new AssetImage('assets/inno.jpg'),
                ),
                accountName: new Text("Innocent Tauzeni"),
                accountEmail: new Text("datatelthem@gmail.com"),
              ),
            ],
          ),
        ),
        body: TheGridView().build(),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.chat_bubble),
          onPressed: () {},
          backgroundColor: Color(0xff6200ea),
        ),
      ),
    );
  }
}

class TheGridView {
  Card makeGridCell(String name, IconData icon) {
    return Card(
      elevation: 1.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
      
        children: <Widget>[
          RaisedButton(
            color: Colors.white,
            elevation: 0.0,
            child: Column(
              children: <Widget>[
                Center(
                  child: Icon(icon,size:60.0),
                ),
                Center(
                  child: Text(name),
                )
              ],
            ),
            onPressed: (){
              print("pressed me");
            },
          )
        ],
           
      
        
      ),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        makeGridCell('Vehicles', Icons.local_car_wash),
        makeGridCell('Reports', Icons.report),
        makeGridCell('MapView', Icons.map),
        makeGridCell('Driver', Icons.person),
        makeGridCell('Gallery', Icons.photo_camera),
        makeGridCell('Tracking', Icons.trending_up)

      ],
    );
  }
}
