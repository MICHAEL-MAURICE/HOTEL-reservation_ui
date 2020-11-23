import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rejestertionform/Widgets/Text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool check = false;

  static final _formKey = GlobalKey<FormState>();

  static final GlobalKey<FormFieldState<String>> _emailKey =
      GlobalKey<FormFieldState<String>>();
  static final GlobalKey<FormFieldState<String>> _user =
      GlobalKey<FormFieldState<String>>();
  static final GlobalKey<FormFieldState<String>> _passwordKey =
      GlobalKey<FormFieldState<String>>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController user = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
                      "Sign up",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 10),
                  child: Text_formField('user name', Icons.person, _user,
                      TextInputType.text, user, false),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 10),
                  child: Text_formField('Email', Icons.email, _emailKey,
                      TextInputType.emailAddress, emailController, false),
                ),
                Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: Text_formField(
                        'password',
                        Icons.lock,
                        _passwordKey,
                        TextInputType.visiblePassword,
                        passwordController,
                        true)),
                Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                    child: Text_formField(
                        'Confirm password',
                        Icons.lock,
                        _passwordKey,
                        TextInputType.visiblePassword,
                        confirmPasswordController,
                        true)),
                Container(
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    onPressed: () {},
                    color: Colors.blueAccent,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
