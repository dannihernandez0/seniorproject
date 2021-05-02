import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        backgroundColor: Color(0xff4C748B),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "About The Creators",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 15,
      ),

      //NEEDS SOME WORK BUT A BITCH IS TIRED.
      body:  ListView(
          children: [
            SizedBox.expand(
              child: Card(
                child: Text("hello"),
              ),
            ),
          ],
        ),
      
    );
  }
}
