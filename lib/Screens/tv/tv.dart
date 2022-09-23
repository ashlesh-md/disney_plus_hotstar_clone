import 'package:disney_plus_hotastar/components/cards/max_width.dart';
import 'package:disney_plus_hotastar/constants.dart';
import 'package:flutter/material.dart';
import '../../components/cards/card_title.dart';
import '../../components/cards/card_title_icon.dart';
import '../../components/cards/carousel.dart';
import '../../components/cards/max_height.dart';
import '../../components/customBottomNavigation.dart';
import '../../components/drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../home/hotstarKids.dart';
import '../home/hotstarMain.dart';
import '../home/hotstar_main/carousel.dart';
import '../home/hotstar_main/continue_watching.dart';
import '../home/hotstar_main/latest_and_trending.dart';
import '../home/hotstar_main/watchlist.dart';

class TV extends StatefulWidget {
  static String routeName = "/tv";
  const TV({
    Key? key,
  }) : super(key: key);

  @override
  State<TV> createState() => _TV();
}

class _TV extends State<TV> {
  @override
  Widget build(BuildContext context) {
    Map<int, List<String>> data1 = {
      0: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/2046/1102046-h-cc9479e5f2a0',
        ''
      ],
      1: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1119/661119-h',
        ''
      ],
      2: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1x/sources/r1/cms/prod/6970/956970-h',
        ''
      ],
      3: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1x/sources/r1/cms/prod/6620/776620-h',
        ''
      ],
      4: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1x/sources/r1/cms/prod/6373/836373-h',
        ''
      ],
      5: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1x/sources/r1/cms/prod/1112/661112-h',
        ''
      ],
      6: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1x/sources/r1/cms/prod/1167/661167-h',
        ''
      ],
      7: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1112/661112-h',
        ''
      ],
      8: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_1x/sources/r1/cms/prod/1168/661168-h',
        ''
      ],
      9: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_hs_3x/sources/r1/cms/prod/1180/661180-h',
        ''
      ],
    };

    Map<int, List<String>> data2 = {
      0: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/8773/1028773-h-48170a73363e',
        ''
      ],
      1: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/905/840905-h',
        ''
      ],
      2: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/383/1350383-h-fc9458afaf3f',
        ''
      ],
      3: [
        'https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/5619/1355619-h-f42260726664',
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
