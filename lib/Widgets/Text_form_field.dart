import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_formField extends StatefulWidget {
  final String labelText;
  final IconData icon;
  final Key key;
  final TextInputType iputType;
  final TextEditingController controller;
  bool obsecure = false;
  Text_formField(this.labelText, this.icon, this.key, this.iputType,
      this.controller, this.obsecure);

  @override
  _Text_formFieldState createState() => _Text_formFieldState();
}

class _Text_formFieldState extends State<Text_formField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'this field required';
          }
        },
        key: widget.key,
        controller: widget.controller,
        decoration: InputDecoration(
            labelText: widget.labelText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.black, width: 0.5)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.red, width: 0.5)),
            focusColor: Colors.tealAccent,
            labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
            prefixIcon: Icon(widget.icon, color: Colors.black, size: 20.0),
            suffixIcon: widget.labelText == 'password' ||
                    widget.labelText == 'Confirm password'
                ? IconButton(
                    icon: Icon(Icons.remove_red_eye),
                    color: Colors.black,
                    iconSize: 15.0,
                    onPressed: () {
                      setState(() {
                        widget.obsecure = !widget.obsecure;
                      });
                    },
                  )
                : null),
        keyboardType: widget.iputType,
        obscureText: widget.labelText == 'password' ||
                widget.labelText == 'Confirm password'
            ? widget.obsecure
            : false,
      ),
    );
  }
}
