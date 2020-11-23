import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hotel_photos extends StatefulWidget {
  final String image;
  Hotel_photos(this.image);
  @override
  _Hotel_photosState createState() => _Hotel_photosState();
}

class _Hotel_photosState extends State<Hotel_photos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                widget.image.toString(),
              ))),
    );
  }
}
