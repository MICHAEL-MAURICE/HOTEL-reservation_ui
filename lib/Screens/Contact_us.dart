import 'package:flutter/material.dart';
import 'package:rejestertionform/Widgets/field_for_form.dart';

class Contact_us extends StatefulWidget {
  @override
  _Contact_usState createState() => _Contact_usState();
}

class _Contact_usState extends State<Contact_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text(
              "Contact us",
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 12,
            color: Colors.blue,
          ),
          SizedBox(
            height: 70,
          ),
          field_for_form("Name", Icons.person, TextInputType.text, false),
          field_for_form(
              "Email", Icons.email, TextInputType.emailAddress, false),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextField(
              maxLengthEnforced: true,
              maxLength: 23,
              decoration: InputDecoration(
                  icon: Icon(Icons.text_fields),
                  hintText: "Write your problem here"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                'Send',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
