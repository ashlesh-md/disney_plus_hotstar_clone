import 'package:disney_plus_hotastar/constants.dart';
import 'package:flutter/material.dart';
import '../../components/customBottomNavigation.dart';
import '../../components/drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../home/hotstarKids.dart';
import '../home/hotstarMain.dart';

class Disney extends StatefulWidget {
  static String routeName = "/disney";
  const Disney({
    Key? key,
  }) : super(key: key);

  @override
  State<Disney> createState() => _Disney();
}

class _Disney extends State<Disney> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return HotstarKids();
  }
}
