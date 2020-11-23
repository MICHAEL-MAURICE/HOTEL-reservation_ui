import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class field_for_form extends StatefulWidget {
  final String labelText;
  final IconData icon;

  final TextInputType iputType;

  bool obsecure = false;
  field_for_form(this.labelText, this.icon, this.iputType, this.obsecure);

  @override
  _field_for_formState createState() => _field_for_formState();
}

class _field_for_formState extends State<field_for_form> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: widget.labelText,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 0.5)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 0.5)),
            focusColor: Color(0xFF090943),
            labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
            prefixIcon: Icon(widget.icon, color: Colors.black, size: 20.0),
            suffixIcon: widget.labelText == 'Card num'
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
        obscureText: widget.labelText == 'Card num' ? widget.obsecure : false,
      ),
    );
  }
}
