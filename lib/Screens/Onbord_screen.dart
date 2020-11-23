import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onbord_screen extends StatefulWidget {
  @override
  _Onbord_screenState createState() => _Onbord_screenState();
}

class _Onbord_screenState extends State<Onbord_screen> {
  Widget SignIn_button() {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(400),
      ),
      onPressed: () {
        Navigator.popAndPushNamed(context, "SignIn");
      },
      child: Text(
        'SIGN IN',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  var pages = [
    PageViewModel(
      title: "Saving Money",
      body:
          "Here you can write the description of the page, to explain someting.",
      image: Center(child: Image.asset("asset/img/savig_money.png")),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "Title of first page",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Center(child: Image.asset("asset/img/web_shopping.png")),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    ),
    PageViewModel(
      title: "Title of first page",
      body:
          "Here you can write the description of the page, to explain someting...",
      image: Center(child: Image.asset("asset/img/cohort_analysis.png")),
      decoration: const PageDecoration(
        pageColor: Colors.white,
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        onDone: () {},
        onSkip: () {
          // You can also override onSkip callback
          Navigator.popAndPushNamed(context, "SignIn");
        },
        showSkipButton: true,
        skip: const Icon(
          Icons.skip_next,
        ),
        next: const Icon(Icons.arrow_forward),
        done: SignIn_button(),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.teal,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
