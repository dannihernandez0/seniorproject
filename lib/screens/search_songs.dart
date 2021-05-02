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
  String searchInput = "";
  //controller to use the textbox
  final TextEditingController queryControl = TextEditingController();

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
                if (searchInput == 'hello') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelloScreen()),
                  );
                }
                if (searchInput == 'goodbye' ||searchInput == 'Goodbye') {
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
