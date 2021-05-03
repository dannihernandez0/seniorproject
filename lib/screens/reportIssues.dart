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
          backgroundColor: Color(0xff5cdb95),
          title: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Fluttify",
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
            child: Column(children: [
          Card(
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
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Send us an email at FluttifyTeam@Fluttify.com\n or contact us at (281)330-8004\n and be sure to tell us how you Fluttify!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
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
          Card(
            child: Text(
                "Disclaimer: The information provided by Fluttify (“we,” “us” or “our”) on Fluttify is for general informational purposes only. All information on the app Fluttify is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability or completeness of any information on the app Fluttify. Under no circumstance shall we have any liability to you for any loss or damage of any kind incurred as a result of the use of the Fluttify service or reliance on any information provided on the application. Your use of the app and your reliance on any information on the app is solely at your own risk. "),
          )
        ])) //
        );
  }
}
