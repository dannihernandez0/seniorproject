import 'package:flutter/material.dart';
import 'package:seniorproject/models/song_Card.dart';

//import 'package:sqflite/sqflite.dart';

class HelloScreen extends StatefulWidget {
  HelloScreen({Key key}) : super(key: key);

  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  List<SongCardInfo> cardInfo = [
    SongCardInfo(
      title: "Hello",
      artist: "Adele",
      album: "25",
      albumArt: "adele25.jpg",
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello",
      artist: "Pop Smoke, A Boogie Wit da Hoodie",
      album: "Shoot For The Stars Aim For The Moon",
      albumArt: 'aboog.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello",
      artist: "Allie X",
      album: "Collxtion I",
      albumArt: 'alliex.png',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello",
      artist: "Lionel Richie",
      album: "Can't Slow Down",
      albumArt: 'lionelrichie.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello",
      artist: "Erykah Badu",
      album: "But You Caint Use My Phone (Mixtape)",
      albumArt: 'erykahhello.png',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello",
      artist: "Karol G, Ozuna",
      album: "Noche de Arrebato y Perreo",
      albumArt: 'karolghello.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello",
      artist: "J. Cole",
      album: "2014 Forest Hills Drive",
      albumArt: 'jcolehello.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello Darlin'",
      artist: "Conway Twitty",
      album: "Hello Darlin'",
      albumArt: 'conwaytwittyhello.jpg',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello Kitty",
      artist: "Avril Lavigne",
      album: "Avril Lavigne (Expanded Edition)",
      albumArt: 'hellokitty.png',
      switchIcon: true,
    ),
    SongCardInfo(
      title: "Hello",
      artist: "Ice Cube, Dr. Dre, MC Ren",
      album: "War & Peace Vol. 2",
      albumArt: 'helloicecube.jpg',
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
                    : Icon(Icons.favorite_sharp),
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
        backgroundColor: Color(0xff4C748B),
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
                  text: "\n'hello'",
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
