import 'package:disney_plus_hotastar/Screens/disney/disney.dart';
import 'package:disney_plus_hotastar/Screens/movies/movies.dart';
import 'package:disney_plus_hotastar/Screens/sports/sports.dart';
import 'package:disney_plus_hotastar/Screens/tv/tv.dart';
import 'package:flutter/material.dart';

import 'Screens/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => Home(),
  TV.routeName: (context) => TV(),
  Disney.routeName: (context) => Disney(),
  Movies.routeName: (context) => Movies(),
  Sports.routeName: (context) => Sports()
};
