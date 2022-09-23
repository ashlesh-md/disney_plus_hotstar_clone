import 'package:disney_plus_hotastar/Screens/disney/disney.dart';
import 'package:disney_plus_hotastar/Screens/sports/sports.dart';
import 'package:disney_plus_hotastar/components/drawer.dart';
import 'package:disney_plus_hotastar/components/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../movies/movies.dart';
import '../tv/tv.dart';
import 'hotstarKids.dart';
import 'hotstarMain.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leadingWidth: 35,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            !myDrawer.isChecked
                ? Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                        child: SvgPicture.network(
                          'https://secure-media.hotstarext.com/web-assets/prod/images/brand-logos/disney-hotstar-logo-dark.svg',
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 65,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Colors.blue.shade600),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(3)),
                        ),
                        child: Center(
                          child: GestureDetector(
                              child: Text(
                            'UPGRADE >',
                            style: TextStyle(
                                color: Colors.blue.shade600, fontSize: 10),
                          )),
                        ),
                      )
                    ],
                  )
                : Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                        child: SvgPicture.network(
                          'https://secure-media.hotstarext.com/web-assets/prod/images/brand-logos/disney-kids.svg',
                        ),
                      ),
                    ],
                  ),
            GestureDetector(
              child: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: !myDrawer.isChecked
          ? getMainpage(_selectedIndex)
          : const HotstarKids(),
      drawer: const myDrawer(),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: const Color.fromARGB(255, 11, 11, 11),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'TV'),
            BottomNavigationBarItem(
                icon: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/archive/3/3e/20220128173228%21Disney%2B_logo.svg/120px-Disney%2B_logo.svg.png",
                  cacheHeight: _selectedIndex == 2 ? 30 : 25,
                  color: _selectedIndex == 2 ? null : Colors.grey,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.movie), label: 'Movies'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.sports_cricket), label: 'Sports'),
          ],
          onTap: (int value) {
            setState(() {
              _selectedIndex = value;
              print(_selectedIndex);
            });
          },
        ),
      ),
    );
  }

  getMainpage(int currentState) {
    switch (currentState) {
      case 0:
        return HotastarMain();
      case 1:
        return const TV();
      case 2:
        return Disney();
      case 3:
        return Movies();
      case 4:
        return Sports();
      default:
        return Home();
    }
  }
}
