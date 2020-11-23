import 'package:flutter/material.dart';

class Sign_button extends StatefulWidget {
  String label;
  Function onpressed;
  Sign_button(this.label, {this.onpressed});
  @override
  _Sign_buttonState createState() => _Sign_buttonState();
}

class _Sign_buttonState extends State<Sign_button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () => widget.onpressed,
        color: Color(0xff63F4FF),
        child: Text(
          widget.label,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
