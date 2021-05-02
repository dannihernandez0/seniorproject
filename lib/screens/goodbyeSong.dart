import 'package:flutter/material.dart';

//import 'package:sqflite/sqflite.dart';

class GoodbyeScreen extends StatefulWidget {
  GoodbyeScreen({Key key}) : super(key: key);

  @override
  _GoodbyeScreenState createState() => _GoodbyeScreenState();
}

class _GoodbyeScreenState extends State<GoodbyeScreen> {
  /* List<SongCardInfo> cardInfo = [
    SongCardInfo(
        title: "Hello", artist: "Adele", album: "25", albumArt: 'adele25.jpg'),
    SongCardInfo(
        title: "Hello",
        artist: "Pop Smoke, A Boogie Wit da Hoodie",
        album: "Shoot For The Stars Aim For The Moon (Deluxe)",
        albumArt: 'aboog.jpg'),
    SongCardInfo(
        title: "Hello",
        artist: "Allie X",
        album: "Collxtion I",
        albumArt: 'alliex.jpg'),
  ];
*/
  ///////////String searchInput;
  /////////////TextEditingController queryControl = TextEditingController();
/*
  Widget songCardwidg(SongCardInfo) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.grey[800],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(SongCardInfo.albumArt)))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    SongCardInfo.title,
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                  Text(
                    SongCardInfo.artist,
                    style: TextStyle(color: Colors.black87, fontSize: 12),
                  ),
                   Text(
                    SongCardInfo.album,
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
*/
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

      body: Text('goodbye'),
    );
  }
}
