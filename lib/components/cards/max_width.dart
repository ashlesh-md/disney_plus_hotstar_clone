import 'package:flutter/material.dart';

class MaxWidth extends StatefulWidget {
  const MaxWidth({Key? key, required this.data}) : super(key: key);

  final Map<int, List<String>> data;
  @override
  _MaxWidth createState() => _MaxWidth();
}

class _MaxWidth extends State<MaxWidth> {
  bool isPlaying = false;
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
      margin: EdgeInsets.only(right: 5),
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width / 2 - 10,
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
