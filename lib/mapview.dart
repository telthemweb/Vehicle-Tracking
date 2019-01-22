import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class TrackerMapner extends StatefulWidget {
  _TrackerMapnerState createState() => _TrackerMapnerState();
}

class _TrackerMapnerState extends State<TrackerMapner> {
  bool mapToggle = false;
  var currentLocation;

  @override
    void initState() {
      super.initState();
      Geolocator().getCurrentPosition().then((currloc){
        setState(() {
            currentLocation = currloc;
            mapToggle = true;       
           });
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: new AppBar(
         title: new Text("Map View"),
       ),

       body: Column(
         children: <Widget>[
           Stack(
             children: <Widget>[
               Container(
                 height: MediaQuery.of(context).size.height-80.0,
                 width: double.infinity,
                 child: mapToggle ?
                 GoogleMap():
                 Center(
                   child: new Text("Loading....."),
                 ),
               ),
             ],
           )
         ],
       ),
    );
  }
}