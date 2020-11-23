import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "About us",
          style: TextStyle(fontSize: 20.0),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Text(
          "Hello, we are the greatest company in the world\n to make reservations for all peaple around the world\n"
          "and we hope be in your expectations"
          "Hello, we are the greatest company in the world\n to make reservations for all peaple around the world\n"
          "and we hope be in your expectations  ",
          style: TextStyle(
            fontSize: 18.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
