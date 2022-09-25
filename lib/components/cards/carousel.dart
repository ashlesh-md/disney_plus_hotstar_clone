import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../video.dart';

class Carousels extends StatefulWidget {
  const Carousels({Key? key, required this.data}) : super(key: key);
  final Map<int, List<String>> data;
  @override
  State<Carousels> createState() => _CarouselsState();
}

class _CarouselsState extends State<Carousels> {
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

  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int index = 0; index < widget.data.length; index++)
              createCarouselItem(
                  image: widget.data[index]![0], video: widget.data[index]![1])
          ],
        ));
  }

  createCarouselItem({required String image, required String video}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width - 10,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        child: VideoPlay(
          image: image,
          video: video,
        ),
      ),
    );
  }
}
