import 'package:flutter/material.dart';

class Boxes extends StatefulWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  _Boxes createState() => _Boxes();
}

class _Boxes extends State<Boxes> {
  bool isPlaying = false;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                createCarouselItem(
                    image:
                        "https://img1.hotstarext.com/image/upload/f_auto/sources/r1/cms/prod/1627/651627-r",
                    video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
                createCarouselItem(
                    image:
                        "https://img1.hotstarext.com/image/upload/f_auto/sources/r1/cms/prod/1658/651658-r",
                    video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
                createCarouselItem(
                    image:
                        "https://img1.hotstarext.com/image/upload/f_auto/sources/r1/cms/prod/3341/653341-r",
                    video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
              ],
            ),
            Row(
              children: [
                createCarouselItem(
                    image:
                        "https://img1.hotstarext.com/image/upload/f_auto/sources/r1/cms/prod/1650/651650-r",
                    video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
                createCarouselItem(
                    image:
                        "https://img1.hotstarext.com/image/upload/f_auto/sources/r1/cms/prod/6715/646715-r",
                    video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
                createCarouselItem(
                    image:
                        "https://img1.hotstarext.com/image/upload/f_auto/sources/r1/cms/prod/1586/651586-r",
                    video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
              ],
            ),
          ],
        ));
  }

  createCarouselItem({required String image, required String video}) {
    return Container(
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 3.25,
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
