import 'package:flutter/material.dart';

class MaxHeight extends StatefulWidget {
  const MaxHeight({Key? key, required this.data}) : super(key: key);
  final Map<int, List<String>> data;
  @override
  _MaxHeight createState() => _MaxHeight();
}

class _MaxHeight extends State<MaxHeight> {
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
