import 'package:flutter/material.dart';

class CardTitle extends StatefulWidget {
  const CardTitle({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  _CardTitleState createState() => _CardTitleState();
}

class _CardTitleState extends State<CardTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      alignment: Alignment.topLeft,
      child: Text(
        widget.text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
