import 'package:flutter/material.dart';
import 'package:seniorproject/models/song_Card.dart';

class LikedSongs extends StatefulWidget {
  const LikedSongs({Key key}) : super(key: key);

  @override
  _LikedSongsState createState() => _LikedSongsState();
}

class _LikedSongsState extends State<LikedSongs> {
  List<SongCardInfo> cardInfo = [
    SongCardInfo(
      title: "Hello",
      artist: "Adele",
      album: "25",
      albumArt: "adele25.jpg",
      switchIcon: false,
    ),
    SongCardInfo(
      title: "Goodbyes",
      artist: "Post Malone, Young Thug",
      album: "Hollywood's Bleeding",
      albumArt: "goodbyePM.png",
      switchIcon: false,
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
              text: "Liked Songs",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\nSongs you added',
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
