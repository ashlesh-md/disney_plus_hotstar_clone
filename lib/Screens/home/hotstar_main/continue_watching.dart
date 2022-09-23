import 'package:flutter/material.dart';

class ContinueWatching extends StatefulWidget {
  const ContinueWatching({Key? key}) : super(key: key);

  @override
  _ContinueWatchingState createState() => _ContinueWatchingState();
}

class _ContinueWatchingState extends State<ContinueWatching> {
  bool isPlaying = false;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            createCarouselItem(
                image:
                    "https://img1.hotstarext.com/image/upload/f_auto,t_hcdl/sources/r1/cms/prod/6237/1296237-h-5662015305e4",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://i2.cinestaan.com/image-bank/1500-1500/203001-204000/203264.jpg",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "http://m.gettywallpapers.com/wp-content/uploads/2021/02/KGF-Chapter-2-Wallpaper-For-Computer-1024x569.jpg",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjJZRd5OR6L1laCi4DHcLQz_JXUMTK5bXK5AkzJ4IN78KeJCC1coREHygio3DjonGdbs0VcMlQInWj59UtEPENCTfGCXlFLKz5TLjyq-SBOJpRM7bHZdQ3ZM7rvUCP8EvXI5LtCRjostm8pMjejkFjY4RZ3SXRctnnbuXjsM2UXRvFBhImV9V0bLI8wsA/s0/HDgallery%20Sita%20Ramam%20HD%20Stills%20%285%29.jpg",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://images.indianexpress.com/2021/12/brahmastra1200.jpg",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
          ],
        ));
  }

  createCarouselItem({required String image, required String video}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 2,
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
