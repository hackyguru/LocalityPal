import 'dart:async';
import 'package:chatApp/helper/Constants.dart';
import 'package:chatApp/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        title: Text(
          "Events",
          style: GoogleFonts.robotoMono(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Color(0xFFFFEEED),
      body: Container(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 10),
                    Text("Nearby events",
                        style: GoogleFonts.robotoMono(
                            fontWeight: FontWeight.bold, fontSize: 25)),
                  ],
                ),
              ),
              // Place the cards here and remove the sized box
              SizedBox(height: 250),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: Row(
                    children: [
                      Icon(Icons.group),
                      SizedBox(width: 10),
                      Text("Nearby communities",
                          style: GoogleFonts.robotoMono(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
