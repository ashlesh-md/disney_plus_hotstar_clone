import 'package:flutter/material.dart';
import '../Screens/disney/disney.dart';
import '../Screens/home/home.dart';
import '../Screens/movies/movies.dart';
import '../Screens/sports/sports.dart';
import '../Screens/tv/tv.dart';
import '../constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final Color kPrimaryColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Colors.grey;
    return Container(
      height: 50,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 11, 11, 11),
          boxShadow: [
            BoxShadow(
              blurRadius: 100,
              offset: Offset(0, -15),
            )
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: MenuState.home == widget.selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tv,
              color: MenuState.tv == widget.selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, TV.routeName);
            },
          ),
          IconButton(
            iconSize: 60,
            icon: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/archive/3/3e/20220128173228%21Disney%2B_logo.svg/120px-Disney%2B_logo.svg.png",
              color: MenuState.disney == widget.selectedMenu
                  ? null
                  : inActiveIconColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Disney.routeName);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.movie,
              color: MenuState.movies == widget.selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Movies.routeName);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.sports_cricket,
              color: MenuState.sports == widget.selectedMenu
                  ? kPrimaryColor
                  : inActiveIconColor,
            ),
            onPressed: () {
              Navigator.pushNamed(context, Sports.routeName);
            },
          ),
        ],
      )),
    );
  }
}
