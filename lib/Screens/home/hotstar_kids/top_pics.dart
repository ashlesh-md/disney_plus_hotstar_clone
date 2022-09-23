import 'package:flutter/material.dart';

class TopPics extends StatefulWidget {
  const TopPics({Key? key}) : super(key: key);

  @override
  _TopPics createState() => _TopPics();
}

class _TopPics extends State<TopPics> {
  bool isPlaying = false;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_1x/sources/r1/cms/prod/3953/673953-v",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/old_images/vertical/MOVIE/2054/1000182054/1000182054-v",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/2604/742604-v",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/old_images/vertical/MOVIE/2003/1000192003/1000192003-v",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_3x/sources/r1/cms/prod/old_images/vertical/MOVIE/6197/1000216197/1000216197-v",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
          ],
        ));
  }

  createCarouselItem({required String image, required String video}) {
    return Container(
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.height / 6.5,
      height: MediaQuery.of(context).size.width / 2.25,
      child: GestureDetector(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          child: Image.network(
            image,
            fit: BoxFit.fill,
          ),
        ),
        onTap: () {
          setState(() {});
        },
      ),
    );
  }
}
