import 'dart:ui';
import 'package:chatApp/views/Home.dart';

import 'mainapp.dart';
import 'main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'views/locality.dart';
import 'views/events.dart';
import 'views/profile.dart';
import 'views/map.dart';



final Map<Widget, Widget> pages = {
  Icon(Icons.home, size: 30, color: Colors.white,): Locality(),
  Icon(Icons.event, size: 30,color: Colors.white,): Events(),
  Icon(Icons.chat, size: 30,color: Colors.white,): Home(),
  Icon(Icons.person, size: 30,color: Colors.white,): Profile(),
};
