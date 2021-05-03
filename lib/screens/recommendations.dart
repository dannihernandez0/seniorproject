import 'package:flutter/material.dart';
import 'package:seniorproject/models/Song_Card.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key key}) : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  List<SongCardInfo> cardInfo = [
    SongCardInfo(
      title: "Hold Each Other",
      artist: "A Great Big World, Futuristic",
      album: "When The Morning Comes",
      albumArt: "WTMC.jpg",
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Without Me",
      artist: "Halsey, Juice WRLD",
      album: "Maniac",
      albumArt: 'maniac.png',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Let It Go",
      artist: "Demi Lovato",
      album: "Demi (Deluxe)",
      albumArt: 'demideluxe.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "The Book of Love - EP Version",
      artist: "Gavin James",
      album: "The Book of Love",
      albumArt: 'bookoflove.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Homicide",
      artist: "Logic, Eminem",
      album: "Confessions of a Dangerous Mind",
      albumArt: 'dangerousmind.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Trigger",
      artist: "Major Lazer, Khalid",
      album: "Music Is A Weapon",
      albumArt: 'musicisaweapon.jpeg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "idfc",
      artist: "blackbear",
      album: "deadroses",
      albumArt: 'deadroses.png',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Glass House",
      artist: "Machine Gun Kelly, Naomi Wild",
      album: "Hotel Diablo",
      albumArt: 'hoteldiablo.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Stay",
      artist: "Khalid",
      album: "Uncle Drew (Original Motion Picture Soundtrack)",
      albumArt: 'uncledrew.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "She Bad",
      artist: "Tyla Yaweh",
      album: "She Bad",
      albumArt: 'shebad.jpg',
      switchIcon: true,
    ),
  ];

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
      ),
      body: ListView(
        children: cardInfo.map((p) {
          return songCardwidg(p);
        }).toList(),
      ),
    );
  }
}
