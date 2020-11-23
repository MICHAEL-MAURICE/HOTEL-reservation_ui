import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rejestertionform/Models/Country_Model.dart';
import 'package:rejestertionform/Screens/Hotel.dart';
import 'package:rejestertionform/Widgets/CardView.dart';
import 'package:rejestertionform/Widgets/arrow_back.dart';

class Country extends StatefulWidget {
  final Country_model cou;
  final int index;
  Country(this.cou, this.index);
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  List<card_view> card = [
    card_view("asset/img/p1.jpg", "Hotel 1", Icons.star, "250\$/day"),
    card_view("asset/img/p2.jpg", "Hotel 2", Icons.star, "400\$/day"),
    card_view("asset/img/p3.jpg", "Hotel 3", Icons.star, "350\$/day"),
    card_view("asset/img/p4.jpg", "Hotel 4", Icons.star, "100\$/day"),
    card_view("asset/img/p5.jpg", "Hotel 5", Icons.star, "550\$/day"),
    card_view("asset/img/p2.jpg", "Hotel 6", Icons.star, "650\$/day"),
    card_view("asset/img/p1.jpg", "Hotel 7", Icons.star, "250\$/day"),
    card_view("asset/img/p1.jpg", "Hotel 8", Icons.star, "150\$/day"),
    card_view("asset/img/p1.jpg", "Hotel 9", Icons.star, "1000\$/day"),
    card_view("asset/img/p1.jpg", "Hotel 10", Icons.star, "200\$/day"),
  ];
  @override
  Widget build(BuildContext context) {
    String im = widget.cou.image;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  image: AssetImage(im),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.1)
                      ]),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        arrow_back(),
                        Text(widget.cou.name,
                            textAlign: TextAlign.start,
                            style:
                                TextStyle(fontSize: 50, color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white12,
              ),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Select your favorite hotel",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    "Price   ",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    child: card[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Hotel(card[index], index);
                          },
                        ),
                      );
                    },
                  );
                },
                itemCount: card.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                    thickness: 0.6,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
