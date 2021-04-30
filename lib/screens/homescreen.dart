import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seniorproject/screens/aboutUs.dart';
import 'package:seniorproject/screens/liked_songs.dart';
import 'package:seniorproject/screens/recommendations.dart';
import 'package:seniorproject/screens/search_songs.dart';
import 'package:seniorproject/screens/reportIssues.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /****************************APPBAR********************* */
      appBar: AppBar(
        backgroundColor: Color(0xff4C748B),
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
                  text: '\nFind your new sound',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ]),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 15,
      ),
/******************************************************* */
      /********body************** */
      body: Container(
        color: Colors.white60,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            //card1
            Card(
              elevation: 10,
              //shadowColor: Colors.pink,
              child: new InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    //sends from button to recommended page
                    MaterialPageRoute(builder: (context) => Recommended()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/images/mountainscut.jpg"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "New \nMusic",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 3
                        ..color = Colors.white,
                    ),
                  )),
                ),
              ),
            ),
            //card2
            Card(
              elevation: 10,
              //shadowColor: Colors.pink,
              child: new InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchSongs()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/images/sunsetcut.jpg"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Add \nSongs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 3
                        ..color = Colors.white,
                    ),
                  )),
                ),
              ),
            ),
            //card3
            Card(
              elevation: 10,
              //shadowColor: Colors.pink,
              child: new InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LikedSongs()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/images/treescut.jpg"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Liked \nSongs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 3
                        ..color = Colors.white,
                    ),
                  )),
                ),
              ),
            ),
            //card4
            Card(
              elevation: 10,
              //shadowColor: Colors.pink,
              child: new InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUs()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/images/civCut.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "About Our \nTeam",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 3
                        ..color = Colors.white,
                    ),
                  )),
                ),
              ),
            ),
            //card5
            Card(
              elevation: 10,
              //shadowColor: Colors.pink,
              child: new InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Report()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/images/watercut.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Feedback",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 3
                        ..color = Colors.white,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
