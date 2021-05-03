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
              text: "Meet Our Team",
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
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(2, 2, 10, 2),
                  child: Row(
                    children: <Widget>[
                      //Text("hello"),
                      //
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("lib/images/meProfilepic.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "Mariana Escobedo",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                            child: Text(
                              "Co-Founder of Fluttify",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "Head of Backend Dev.",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "@DevMariana",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
/*
-
-
-
-
-
*/
            Container(
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(2, 2, 10, 2),
                  child: Row(
                    children: <Widget>[
                      //Text("hello"),
                      //

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "  Daniel Hernandez",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                            child: Text(
                              " Co-Founder of Fluttify",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "   Head of FrontEnd Dev.",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "   @DevDaniel",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("lib/images/danprofile.jpg"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(2, 2, 10, 2),
                  child: Row(
                    children: <Widget>[
                      //Text("hello"),
                      //
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("lib/images/silverprofile.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "Silver Escobedo",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                            child: Text(
                              "Employee at Fluttify",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "Stress Relief Specialist",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            child: Text(
                              "@DudeItsSilver",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
