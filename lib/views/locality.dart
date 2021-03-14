import 'dart:async';

import 'package:chatApp/helper/Constants.dart';
import 'package:chatApp/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Locality extends StatefulWidget {
  @override
  _LocalityState createState() => _LocalityState();
}

double lat = 0;
double long = 0;
String name1;

class _LocalityState extends State<Locality> {
  Set<Marker> _markers = {};
  bool _loading = false;
getuserlocation() async {
    await FirebaseFirestore.instance.collection('location').get().then((value) {
      setState(() {
        // ignore: missing_return
        _markers.addAll(value.documents.map((e) {
          lat = double.parse(e.data()['Location'][0]);
          long = double.parse(e.data()['Location'][1]);
          print(lat);
          print(long);
          setState(() {
            _loading = false;
            Marker(
              infoWindow: InfoWindow(
                title: "Dewdw",
              ),
              markerId: MarkerId(
                  e.data()["markerid"] == null ? "dd" : e.data()["markerid"]),
              position: LatLng(lat, long),
            );
          });
          print(_markers);
        }));
      });
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _loading = true;
    });
    getuserlocation();
    name1 = "dde";
  }



  @override
  Widget build(BuildContext context) {
    var cp = CameraPosition(
      target: LatLng(lat, long),
      zoom: 50,
      tilt: 50,
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEF5A4C),
          title: Text("Locality Pal"),
        ),
        body: _loading == true
            ? Center(child: CircularProgressIndicator())
            : Container(
                child: FutureBuilder(
                    future: getuserlocation(),
                    builder: (context, snapshot) {
                      return GoogleMap(
                        initialCameraPosition: cp,
                        markers: _markers,
                      );
                    })));
  }
}