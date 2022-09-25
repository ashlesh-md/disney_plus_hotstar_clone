import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  VideoPlay({super.key, required this.image, required this.video});
  @override
  final String image;
  final String video;
  State<VideoPlay> createState() => _VideoPlay();
}

class _VideoPlay extends State<VideoPlay> {
  TextEditingController nameController = TextEditingController();
  late VideoPlayerController _videoController;
  late Future<void> _initializeVideoPlayerFuture;
  bool isPlaying = false;
  bool isZoomed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoController = VideoPlayerController.network(
      widget.video,
    );

    _initializeVideoPlayerFuture = _videoController.initialize();
    _videoController.setLooping(true);
  }

  @override
  void dispose() {
    super.dispose();
    _videoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double videoHeight = MediaQuery.of(context).size.height / 4;
    return !isPlaying
        ? GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(7)),
              child: Image.network(
                widget.image,
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              setState(() {
                if (isPlaying == true) {
                  _videoController.pause();
                  isPlaying = !isPlaying;
                } else {
                  _videoController.play();
                  isPlaying = !isPlaying;
                }
              });
            },
          )
        : GestureDetector(
            child: FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _videoController.value.aspectRatio,
                    child: FittedBox(
                      fit: BoxFit.none,
                      child: SizedBox(
                        height: isZoomed ? videoHeight + 75 : videoHeight,
                        width: MediaQuery.of(context).size.width - 10,
                        child: VideoPlayer(_videoController),
                      ),
                    ),
                  );
                } else {
                  return GestureDetector(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      child: Image.network(
                        widget.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _videoController.play();
                      });
                    },
                  );
                }
              },
            ),
            onDoubleTap: () {
              setState(() {
                isZoomed = !isZoomed;
              });
            },
            onTap: () {
              setState(() {
                if (isPlaying == true) {
                  _videoController.pause();
                  isPlaying = !isPlaying;
                } else {
                  _videoController.play();
                  isPlaying = !isPlaying;
                }
              });
            },
          );
  }
}
