import 'dart:async';
import 'package:chatApp/helper/Constants.dart';
import 'package:chatApp/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEF5A4C),
        title: Text("Events",
        style: GoogleFonts.robotoMono(
          fontWeight: FontWeight.bold
        ),),
      ),
      backgroundColor: Color(0xFFFFEEED),
      body: 
      Container(
        child: Container(
          width: MediaQuery.of(context).size.width,

        ),
      )
      
    );
  }
}
