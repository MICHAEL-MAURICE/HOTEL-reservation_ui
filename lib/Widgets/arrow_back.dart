import 'package:flutter/material.dart';

class arrow_back extends StatefulWidget {
  @override
  _arrow_backState createState() => _arrow_backState();
}

class _arrow_backState extends State<arrow_back> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        size: 25,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
