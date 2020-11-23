import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class card_view extends StatefulWidget {
  String image;
  String name;
  IconData icon;
  String pri;
  Function fun;
  card_view(this.image, this.name, this.icon, this.pri);
  @override
  _card_viewState createState() => _card_viewState();
}

class _card_viewState extends State<card_view> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    widget.image.toString(),
                  ))),
        ),
        Container(
          child: ListTile(
            hoverColor: Colors.blueAccent,
            title: Text(
              widget.name.toString(),
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
            trailing: Text(
              widget.pri.toString(),
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),
            ),
          ),
        )
      ],
    );
  }
}
