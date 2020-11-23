import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rejestertionform/Models/Hotelph_model.dart';
import 'package:rejestertionform/Screens/Chat_page.dart';
import 'package:rejestertionform/Screens/make_a_reservation.dart';
import 'package:rejestertionform/Widgets/CardView.dart';
import 'package:rejestertionform/Widgets/Fav_icon.dart';
import 'package:rejestertionform/Widgets/Hotel_Photos.dart';
import 'package:rejestertionform/Widgets/arrow_back.dart';

class Hotel extends StatefulWidget {
  final card_view Card;
  final int index;
  Hotel(this.Card, this.index);
  @override
  _HotelState createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  List<Hotelph_model> ph = [
    Hotelph_model("asset/img/h1.jpg"),
    Hotelph_model("asset/img/h2.jpg"),
    Hotelph_model("asset/img/h3.jpg"),
    Hotelph_model("asset/img/h4.jpg"),
    Hotelph_model("asset/img/h5.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      widget.Card.image.toString(),
                    ))),
            child: Align(
              alignment: Alignment.topLeft,
              //padding: const EdgeInsets.all(8.0),
              child: arrow_back(),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(90.0),
                      topLeft: Radius.circular(90.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.Card.name.toString(),
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        fav_icon()
                      ],
                    ),
                  ),
                  Row(
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
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.grey[300],
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.phone,
                                color: Colors.blue,
                              ),
                              onPressed: null),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.rocketchat,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (contex) {
                                  return ChatDetailPage();
                                }));
                              }),
                        ]),
                  ),
                  Text(
                    " \nHello this is our perfect hotel in the world\n"
                    " Hello this is our perfect hotel in the world\n"
                    "Hello this is our perfect hotel in the world"
                    "\nHello this is our perfect hotel in the world\n"
                    " Hello this is our perfect hotel in the world\n"
                    "Hello this is our perfect hotel in the world"
                    "",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Hotel images",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0),
                    height: 300.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Hotel_photos(ph[index].image);
                      },
                      itemCount: ph.length,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return makereser();
                        }));
                      },
                      color: Colors.blue,
                      child: Text(
                        'make a reservation',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
