import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hotstar_kids/boxes.dart';
import 'hotstar_kids/kids_carousel.dart';
import 'hotstar_kids/popular.dart';
import 'hotstar_kids/top_pics.dart';

class HotstarKids extends StatelessWidget {
  const HotstarKids({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          KidsCarousel(),
          const Boxes(),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Top Pics For You',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const TopPics(),
          Container(
            color: Color.fromARGB(255, 11, 11, 11),
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Popular',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const Popular(),
        ],
      ),
    );
  }
}
