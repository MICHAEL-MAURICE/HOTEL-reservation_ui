import 'package:flutter/material.dart';
import 'package:rejestertionform/Screens/Onbord_screen.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/SignInScreen.dart';
import 'Screens/SignUPScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Screen ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: 'Onbord_screen',
      routes: {
        'SignIn': (context) => SignInScreen(),
        'SignUp': (context) => SignUpScreen(),
        'Home': (context) => HomeScreen(),
        'Onbord_screen': (context) => Onbord_screen()
      },
    );
  }
}
