import 'package:flutter/material.dart';
import 'package:rejestertionform/Screens/Paymet.dart';
import 'package:rejestertionform/Widgets/field_for_form.dart';

class makereser extends StatefulWidget {
  @override
  _makereserState createState() => _makereserState();
}

class _makereserState extends State<makereser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "make a reservation",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 300,
            width: 400,
            child: Column(
              children: [
                field_for_form("Number of rooms", Icons.room_service,
                    TextInputType.number, false),
                field_for_form("Number of aduilt", Icons.person,
                    TextInputType.number, false),
                field_for_form("Number of childern", Icons.child_friendly,
                    TextInputType.number, false),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CreditCardsPage();
                }));
              },
              color: Colors.blue,
              child: Text(
                'continue',
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
