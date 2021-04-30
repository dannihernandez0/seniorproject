import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key key}) : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        backgroundColor: Color(0xff4C748B),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "New songs",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\nHandpicked just for you',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ]),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 15,
      ), //
    );
  }
}
