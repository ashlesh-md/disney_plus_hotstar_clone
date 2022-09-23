import 'package:flutter/material.dart';

class CardTitleIcon extends StatefulWidget {
  const CardTitleIcon({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _CardTitleIconState createState() => _CardTitleIconState();
}

class _CardTitleIconState extends State<CardTitleIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 11, 11, 11),
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
