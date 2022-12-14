import 'package:disney_plus_hotastar/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'Screens/home/home.dart';
import 'Screens/home/hotstarKids.dart';
import 'Screens/home/hotstarMain.dart';
import 'components/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 11, 11, 11),
      ),
      home: Home(),
      routes: routes,
    );
  }
}
