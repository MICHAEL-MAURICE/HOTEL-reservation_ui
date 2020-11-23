import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rejestertionform/Models/Country_Model.dart';
import 'package:rejestertionform/Screens/Aboutus.dart';
import 'package:rejestertionform/Screens/Contact_us.dart';
import 'package:rejestertionform/Screens/Country.dart';
import 'package:rejestertionform/Screens/profile.dart';
import 'package:rejestertionform/Widgets/Places.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Country_model> Countries = [
    Country_model("asset/img/Eg.jpg", "Egypt"),
    Country_model("asset/img/usa.jpg", "united states"),
    Country_model("asset/img/paries.jpg", "Parise"),
    Country_model("asset/img/ru.jpg", "Rusha"),
    Country_model("asset/img/ch.jpg", "China"),
    Country_model("asset/img/ge.jpg", "Germany"),
  ];
  List<Places> place = [
    Places(
      "asset/img/Eg.jpg",
      "Egypt",
    ),
    Places("asset/img/usa.jpg", "united states"),
    Places("asset/img/paries.jpg", "Paris"),
    Places("asset/img/ru.jpg", "Russia"),
    Places("asset/img/ch.jpg", "China"),
    Places("asset/img/ge.jpg", "Germany"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Travelling"),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("asset/img/p5.jpg")),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2)
                ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      "Fly With us \n and descover the world",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 11.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "write the place which is search for",
                          icon: Icon(Icons.search),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Select your Favorite Country",
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              padding: EdgeInsets.only(bottom: 5),
              itemBuilder: (context, index) {
                return InkWell(
                  child: place[index],
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Country(Countries[index], index);
                    }));
                  },
                );
              },
              itemCount: place.length,
            ),
          )
        ],
      ),
      drawer: Drawer(
        elevation: 0.0,
        child: ListView(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
              child: Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 50,
                    ),
                    Text(
                      "Michael Maurice",
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.blueAccent,
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.blueAccent,
              ),
              title: Text(
                "Contact us",
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Contact_us();
                }));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.error,
                color: Colors.blueAccent,
              ),
              title: Text(
                "About us",
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        fullscreenDialog: true,
                        builder: (_) {
                          return Aboutus();
                        }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
