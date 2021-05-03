import 'package:flutter/material.dart';
import 'package:seniorproject/models/song_Card.dart';


class GoodbyeScreen extends StatefulWidget {
  GoodbyeScreen({Key key}) : super(key: key);

  @override
  _GoodbyeScreenState createState() => _GoodbyeScreenState();
}

class _GoodbyeScreenState extends State<GoodbyeScreen> {
  List<SongCardInfo> cardInfo = [
    SongCardInfo(
      title: "Goodbyes",
      artist: "Post Malone, Young Thug",
      album: "Hollywood's Bleeding",
      albumArt: "goodbyePM.png",
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Goodbye Earl",
      artist: "The Chicks",
      album: "Fly",
      albumArt: 'goodbyeDixChix.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Goodbye",
      artist: "Russ",
      album: "Pink Elephant",
      albumArt: 'goodbyeRuss.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Goodbye Horses",
      artist: "Q Lazzarus",
      album: "Goodbye Horses - Single",
      albumArt: 'goodbyeQL.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "goodbye",
      artist: "Billie Ellish",
      album: "WHEN WE ALL FALL ASLEEP, WHERE DO WE GO?",
      albumArt: 'goodbyeBillie.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "50 Ways to Say Goodbye",
      artist: "Train",
      album: "California 37",
      albumArt: 'goodbyeTrain.png',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Goodbye",
      artist: "Who Is Fancy",
      album: "Goodbye",
      albumArt: 'goodbyeFancy.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Goodbyes",
      artist: "Sublime With Rome",
      album: "Goodbyes'",
      albumArt: 'goodbyeSWR.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Goodbye Blue Sky",
      artist: "Pink Floyd",
      album: "The Wall",
      albumArt: 'goodbyePF.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Goodbye",
      artist: "Kristinia DeBarge",
      album: "Exposed (Deluxe Edition)",
      albumArt: 'goodbyeKD.jpg',
      switchIcon: true,
    ),
  ];

  ///////////String searchInput;
  /////////////TextEditingController queryControl = TextEditingController();

  Widget songCardwidg(SongCardInfo) {
    return Padding(
      padding: EdgeInsets.all(1.0),
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(1.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("lib/images/" + SongCardInfo.albumArt),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    SongCardInfo.title,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    SongCardInfo.artist,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    SongCardInfo.album,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(
                flex: 3,
              ),
              IconButton(
                iconSize: 30,

                // WILL NEED TO MODIFY THIS LINE
                icon: SongCardInfo.switchIcon
                    ? Icon(Icons.favorite_border_outlined)
                    : Icon(Icons.favorite_sharp, color: Colors.red),
                onPressed: () {
                  // ADD YOUR CODE HERE
                  setState(() {
                    SongCardInfo.switchIcon = !SongCardInfo.switchIcon;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        backgroundColor: Color(0xff5cdb95),
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Search Results For:",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "\n'goodbye'",
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

      body: ListView(
        children: cardInfo.map((p) {
          return songCardwidg(p);
        }).toList(),
      ),
    );
  }
}