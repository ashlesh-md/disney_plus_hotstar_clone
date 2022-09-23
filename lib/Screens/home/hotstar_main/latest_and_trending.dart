import 'package:flutter/material.dart';

class LatestAndTrending extends StatefulWidget {
  const LatestAndTrending({Key? key}) : super(key: key);

  @override
  _LatestAndTrending createState() => _LatestAndTrending();
}

class _LatestAndTrending extends State<LatestAndTrending> {
  bool isPlaying = false;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            createCarouselItem(
                image:
                    "https://www.filmibeat.com/ph-big/2022/03/kgf-chapter-2_164784859700.jpg",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://www.behindwoods.com/tamil-movies/kaithi/stills-photos-pictures/kaithi-stills-photos-pictures-01.jpg",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/45245739-4358-4b0a-a231-3abd07c1fb01/deekq1d-7e94dcbc-397b-48f8-a0de-834bf79f4305.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzQ1MjQ1NzM5LTQzNTgtNGIwYS1hMjMxLTNhYmQwN2MxZmIwMVwvZGVla3ExZC03ZTk0ZGNiYy0zOTdiLTQ4ZjgtYTBkZS04MzRiZjc5ZjQzMDUucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.7qAGiI4AFJX00WZjS0k0HLCc8PDKBviAl-PtIE6Edl4",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg",
                video: "https://www.youtube.com/watch?v=OKBMCL-frPU"),
            createCarouselItem(
                image:
                    "https://upload.wikimedia.org/wikipedia/en/a/ab/Rab_Ne_Bana_Di_Jodi.jpg",
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
