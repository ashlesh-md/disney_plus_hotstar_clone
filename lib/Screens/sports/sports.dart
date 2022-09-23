import 'package:disney_plus_hotastar/constants.dart';
import 'package:flutter/material.dart';
import '../../components/cards/card_title.dart';
import '../../components/cards/card_title_icon.dart';
import '../../components/cards/carousel.dart';
import '../../components/cards/max_height.dart';
import '../../components/cards/max_width.dart';
import '../../components/customBottomNavigation.dart';
import '../../components/drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../home/hotstarKids.dart';
import '../home/hotstarMain.dart';
import '../home/hotstar_main/latest_and_trending.dart';
import '../home/hotstar_main/watchlist.dart';

class Sports extends StatefulWidget {
  static String routeName = "/sports";
  const Sports({
    Key? key,
  }) : super(key: key);

  @override
  State<Sports> createState() => _Sports();
}

class _Sports extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    Map<int, List<String>> data1 = {
      0: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1167/661167-h',
        ''
      ],
      1: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1173/661173-h',
        ''
      ],
      2: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1174/661174-h',
        ''
      ],
      3: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1177/661177-h',
        ''
      ],
      4: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1180/661180-h',
        ''
      ],
      5: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1178/661178-h',
        ''
      ],
      6: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1171/661171-h',
        ''
      ],
      7: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1176/661176-h',
        ''
      ],
      8: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1x/sources/r1/cms/prod/1170/661170-h',
        ''
      ],
      9: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1176/661176-h',
        ''
      ],
    };

    Map<int, List<String>> data2 = {
      0: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/old_images/SHOW/2292/12292/12292-h',
        ''
      ],
      1: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/5166/1075166-h-befe69370ab4',
        ''
      ],
      2: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/3033/23033-h',
        ''
      ],
      3: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/old_images/SHOW/11/10011/10011-h',
        ''
      ]
    };
    Map<int, List<String>> data3 = {
      0: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/907/840907-v',
        ''
      ],
      1: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/1299/1351299-v-8d0bbbc730da',
        ''
      ],
      2: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/old_images/vertical/MOVIE/3314/1770003314/1770003314-v',
        ''
      ],
      3: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/3669/593669-v',
        ''
      ],
      4: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/8285/388285-v',
        ''
      ],
      5: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/7676/647676-v',
        ''
      ],
    };

    Map<int, List<String>> data4 = {
      0: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/4259/1314259-h-f77af6359c99',
        ''
      ],
      1: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/6461/1356461-h-d4da30bb2108',
        ''
      ],
      2: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/4270/1314270-h-ef4b14d0c4ec',
        ''
      ],
      3: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/6461/1356461-h-d4da30bb2108',
        ''
      ],
      4: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/3746/53746-h',
        ''
      ],
    };
    return SingleChildScrollView(
      child: Column(
        children: [
          Carousels(data: data2),
          CardTitleIcon(title: 'Popular Channel'),
          MaxWidth(data: data1),
          CardTitle(text: 'Watchlist'),
          MaxWidth(data: data4),
          CardTitle(text: 'Drama Shows'),
          MaxHeight(data: data3),
          CardTitle(text: 'Action Movies'),
          const LatestAndTrending(),
          CardTitle(text: 'Poular Shows'),
          const Watchlist(),
        ],
      ),
    );
  }
}
