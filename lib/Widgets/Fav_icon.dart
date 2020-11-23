import 'package:flutter/material.dart';

class fav_icon extends StatefulWidget {
  @override
  _fav_iconState createState() => _fav_iconState();
}

class _fav_iconState extends State<fav_icon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.favorite,
        color: Colors.grey[400],
        size: 30.0,
      ),
    );
  }
}
