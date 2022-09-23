import 'package:disney_plus_hotastar/constants.dart';
import 'package:flutter/material.dart';
import '../../components/customBottomNavigation.dart';
import '../../components/drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../home/hotstarKids.dart';
import '../home/hotstarMain.dart';
import '../home/hotstar_main/carousel.dart';
import '../home/hotstar_main/continue_watching.dart';
import '../home/hotstar_main/latest_and_trending.dart';
import '../home/hotstar_main/watchlist.dart';

class Movies extends StatefulWidget {
  static String routeName = "/movies";
  const Movies({
    Key? key,
  }) : super(key: key);

  @override
  State<Movies> createState() => _Movies();
}

class _Movies extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Carousel(),
          Container(
            color: Color.fromARGB(255, 11, 11, 11),
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Continue Watching',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const ContinueWatching(),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            alignment: Alignment.topLeft,
            child: const Text(
              'Watchlist',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          const Watchlist(),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Latest & Trending',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const LatestAndTrending(),
          Container(
            color: Color.fromARGB(255, 11, 11, 11),
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Action Movies',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const LatestAndTrending(),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Drama Shows',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const Watchlist(),
        ],
      ),
    );
  }
}
