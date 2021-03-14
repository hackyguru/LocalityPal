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
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}