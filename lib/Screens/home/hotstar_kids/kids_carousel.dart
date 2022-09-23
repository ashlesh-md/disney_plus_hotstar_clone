import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class KidsCarousel extends StatefulWidget {
  const KidsCarousel({Key? key}) : super(key: key);

  @override
  State<KidsCarousel> createState() => _KidsCarousel();
}

class _KidsCarousel extends State<KidsCarousel> {
  bool isPlaying = false;
  String videoLink = "https://www.youtube.com/watch?v=OKBMCL-frPU";
  late VideoPlayerController _controller;
  late Future<void> _initializePlayerFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.network(videoLink);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.setVolume(1);
    _initializePlayerFuture = _controller.initialize();
    _initializePlayerFuture.then((value) => _controller.play());
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _controller.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/3422/753422-v",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/3555/753555-h",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/7728/1297728-h-6d8cc103a144",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
          ],
        ));
  }

  createCarouselItem({required String image, required String video}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width - 10,
      child: GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          child: Image.network(
            image,
            fit: BoxFit.fill,
          ),
        ),
        onTap: () {
          setState(() {
            _controller.play();
          });
        },
      ),
    );
  }
}
