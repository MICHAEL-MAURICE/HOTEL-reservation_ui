import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Places extends StatefulWidget {
  final String image;
  final String name;
  Places(
    this.image,
    this.name,
  );
  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.0)),
      padding: EdgeInsets.only(left: 8),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: AssetImage(widget.image.toString()),
              height: 130,
              width: 300,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            width: 200,
            child: Text(
              widget.name.toString(),
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
