import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rejestertionform/Widgets/field_for_form.dart';

class CreditCardsPage extends StatefulWidget {
  @override
  _CreditCardsPageState createState() => _CreditCardsPageState();
}

class _CreditCardsPageState extends State<CreditCardsPage> {
  final GlobalKey<ScaffoldState> keysnack = GlobalKey<ScaffoldState>();
  Showsnack() {
    final snack = SnackBar(
        backgroundColor: Colors.green,
        elevation: 2.0,

        //shape: ShapeBorder(BorderRadius.only(  topLeft: Radius.circular(4.0), topRight: Radius.circular(4.0))),
        content: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0))),
          child: Text(
            "Successful..... \n your payment is completed",
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ));
    keysnack.currentState.showSnackBar(snack);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keysnack,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          _buildTitleSection(
            title: "Payment Details",
          ),
          _buildCreditCard(
              color: Color(0xFF090943),
              cardExpiration: "08/2022",
              cardHolder: "Michael Maurice",
              cardNumber: "3546 7532 XXXX 9742"),
          field_for_form("Price", FontAwesomeIcons.dollarSign,
              TextInputType.number, false),
          field_for_form("Card num", FontAwesomeIcons.creditCard,
              TextInputType.visiblePassword, true),
          field_for_form("Name", Icons.person, TextInputType.text, false),
          field_for_form("Ex-Date", FontAwesomeIcons.calendar,
              TextInputType.datetime, true),
          field_for_form(
              "three-num", FontAwesomeIcons.key, TextInputType.number, true),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                Showsnack();
              },
              color: Color(0xFF090943),
              child: Text(
                'Buy Now',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Build the title section
Column _buildTitleSection({
  @required title,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 16.0),
        child: Text(
          '$title',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

// Build the credit card widget
Card _buildCreditCard(
    {@required Color color,
    @required String cardNumber,
    @required String cardHolder,
    @required String cardExpiration}) {
  return Card(
    elevation: 4.0,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    child: Container(
      height: 200,
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              '$cardNumber',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontFamily: 'CourrierPrime'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildDetailsBlock(
                label: 'CARDHOLDER',
                value: cardHolder,
              ),
              _buildDetailsBlock(label: 'VALID THRU', value: cardExpiration),
            ],
          ),
        ],
      ),
    ),
  );
}

// Build Column containing the cardholder and expiration information
Column _buildDetailsBlock({@required String label, @required String value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        '$label',
        style: TextStyle(
            color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold),
      ),
      Text(
        '$value',
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      )
    ],
  );
}
