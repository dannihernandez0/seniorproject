import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key key}) : super(key: key);

  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //
        appBar: AppBar(
          backgroundColor: Color(0xff4C748B),
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Experience Any Problems?",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\n',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ]),
          ),
          centerTitle: true,
          toolbarHeight: 100,
          elevation: 15,
        ),
        body: Center(
          child: Card(
            elevation: 10,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "We Would Love Your Feedback!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Our team at Fluttify work hard everyday to ensure you recieve the best experience out of our application.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Send us an email at FluttifyTeam@Fluttify.com\n or contact us at \n(281)330-8004\n and be sure to tell us\n how you Fluttify!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [],
                    ),
                  )
                ],
              ),
            ),
          ),
        ) //
        );
  }
}
