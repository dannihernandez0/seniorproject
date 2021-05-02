import 'package:flutter/material.dart';
import 'package:seniorproject/screens/helloSong.dart';
//import 'package:sqflite/sqflite.dart';
import 'package:seniorproject/screens/goodbyeSong.dart';

class SearchSongs extends StatefulWidget {
  SearchSongs({Key key}) : super(key: key);

  @override
  _SearchSongsState createState() => _SearchSongsState();
}

class _SearchSongsState extends State<SearchSongs> {
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
//variable to hold the text from the textbox
  String searchInput = "";
  //controller to use the textbox
  final TextEditingController queryControl = TextEditingController();
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
              text: "Add Songs",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\nAdd songs for more recommendations',
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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(searchInput),

          //TEXT FIELD
          Container(
            child: TextField(
              //specifying the controller for text field
              controller: queryControl,
            ),
            padding: EdgeInsets.all(12),
          ),
          //Button
          Container(
            child: ElevatedButton(
              child: Text("search"),
              onPressed: () {
                //1. extract variable from textbox when pressed
                //2. store it in a variable
                setState(() {
                  searchInput = queryControl.text;
                });
                //Success!
                if(searchInput == 'hello'){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelloScreen()),
                  );
                }
                if(searchInput == 'goodbye'){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoodbyeScreen()),
                  );
                }
                //changes value of searchvar
              },
            ),
          ),
        ],
      ),
    );
  }
}
