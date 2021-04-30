import 'package:flutter/material.dart';
import 'package:seniorproject/models/call_spotify.dart';
import 'package:seniorproject/models/database.dart';
//import 'package:sqflite/sqflite.dart';

class SearchSongs extends StatefulWidget {
  SearchSongs({Key key}) : super(key: key);

  @override
  _SearchSongsState createState() => _SearchSongsState();
}

class _SearchSongsState extends State<SearchSongs> {
  String searchInput;

  TextEditingController queryControl = TextEditingController();

  DatabaseData dataOb = DatabaseData();

  Spotify spotifyOb = Spotify();

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

      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(children: <Widget>[
          //searchbar
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              //search icon in bar
              suffix: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  searchInput = queryControl.text;
                  if (searchInput != null) {
                    Navigator.popAndPushNamed(context, '/searchSongs');
                  }
                },
              ),
            ),
            style: TextStyle(
              fontSize: 20.0,
            ),
            controller: queryControl,
            onSubmitted: (query) {
              //setting the variable equal to what the box recieves
              searchInput = query;
              //if the textbox is not empty
              if (searchInput != null) {
                Navigator.popAndPushNamed(context, '/searchSongs');
              }
            },
          ),
          //Search Results will appear below
          ////START HERE AGAIN
          //SizedBox(height:10.0),
          //
                    SizedBox(height: 10.0),
            // Builder of all search result data
            Expanded(
              child: FutureBuilder(
                // Get search results
                future: spotifyOb.getSearch(searchInput),
                // builder with list
                builder: (context, snapshot) {
                  // If async await process is completed
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Container(
                      child: ListView.builder(
                        // Number of elements
                        itemCount: snapshot.data.length,
                        // Widget for each element
                        itemBuilder: (context, index) {
                          // Create empty list for artists
                          List<String> artistsList = [];
                          // Iterate through artists per track
                          snapshot.data[index].artists.forEach((_artist) {
                            // Add artist name to artistsList
                            artistsList.add(_artist.name);
                          });
                          // Card widget
                          return Card(
                            // List tile widget
                            child: ListTile(
                              // Name of the track
                              title: Text(
                                snapshot.data[index].name,
                                style: TextStyle(
                                  color: Colors.grey[200]
                                )
                              ),
                              // Artists
                              subtitle: Text(
                                artistsList.toString().replaceAll('[', '').replaceAll(']', ''),
                                style: TextStyle(
                                  color: Colors.grey[500]
                                )
                              ),
                              // Music Icon
                              leading: Icon(
                                Icons.music_note,
                                color: Theme.of(context).accentColor,
                              ),
                              onTap: () {
                                // Navigate to details page, sending track ID along with it
                                Navigator.pushNamed(context, '/details', arguments: {
                                  'track_sId': snapshot.data[index].id,
                                  'track_Name': snapshot.data[index].name
                                });
                              },
                            ),
                          );
                        },
                      ),
                    );
                  } else if (snapshot.hasError) {
                    // If code has error, throw it
                    throw snapshot.error;
                  } else {
                    // Progress circle while async await is happening
                    return Center(
                      child: CircularProgressIndicator());
                  }
                },
              ),
            ),
        ]),
      ),
    );
  }
}
