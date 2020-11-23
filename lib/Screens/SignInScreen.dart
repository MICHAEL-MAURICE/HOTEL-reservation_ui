import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rejestertionform/Screens/SignUPScreen.dart';
import 'package:rejestertionform/Widgets/Text_form_field.dart';

import 'HomeScreen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var email, password;
  static final _formKey = GlobalKey<FormState>();
  static final GlobalKey<FormFieldState<String>> _emailKey =
      GlobalKey<FormFieldState<String>>();
  static final GlobalKey<FormFieldState<String>> _user =
      GlobalKey<FormFieldState<String>>();
  static final GlobalKey<FormFieldState<String>> _passwordKey =
      GlobalKey<FormFieldState<String>>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController user = TextEditingController();
  final TextEditingController resetPasswordController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Card(
          elevation: 7.0,
          margin: EdgeInsets.only(top: 40.0, right: 20, left: 20),
          child: ListView(
            children: <Widget>[
              Container(
                height: 300,
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //Email-----------------------------

              Container(
                  margin: EdgeInsets.only(right: 20, left: 10),
                  child: Text_formField('Email', Icons.email, _emailKey,
                      TextInputType.emailAddress, emailController, false)),

              //password------------------------------
              Container(
                  margin: EdgeInsets.only(right: 20, left: 10),
                  child: Text_formField('password', Icons.lock, _passwordKey,
                      TextInputType.visiblePassword, passwordController, true)),

              //SignIn button---------------------------------
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child: Text(
                    'Forgot Password?!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        decoration: TextDecoration.underline),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                              actions: [
                                IconButton(
                                    icon: Icon(Icons.cancel),
                                    color: Colors.red,
                                    iconSize: 20.0,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    }),
                                IconButton(
                                    icon: Icon(Icons.done),
                                    color: Colors.black,
                                    iconSize: 20.0,
                                    onPressed: () {}),
                              ],
                              title: Text(
                                'Reset Password?!',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              content: Text_formField(
                                  'Email',
                                  Icons.email,
                                  _user,
                                  TextInputType.emailAddress,
                                  user,
                                  false));
                        });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                  color: Colors.blueAccent,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          icon: Icon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {})
                    ],
                  )),

              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text('  Don\'t have Email '),
                    InkWell(
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignUpScreen();
                        }));
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
