import 'package:flutter/material.dart';
import 'dart:async';
import 'package:seniorproject/screens/homescreen.dart';

class OpeningScreen extends StatefulWidget {
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, navigateToDeviceScreen);
  }

//sends to design screen once ready.
  navigateToDeviceScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

//change the background to a picture
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff5cdb95), body: HomeText());
  }
}

class HomeText extends StatefulWidget {
  @override
  _HomeTextState createState() => _HomeTextState();
}

class _HomeTextState extends State<HomeText> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Fluttify",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 48,
                color: Color(0xffFFFFFF),
                letterSpacing: 1.6,
              )),
          Text("Find your new sound",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xffFFFFFF),
                letterSpacing: 1.2,
              ))
        ],
      ),
    );
  }
}
