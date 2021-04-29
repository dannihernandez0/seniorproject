import 'package:seniorproject/models/song_info.dart';
import 'package:seniorproject/models/database.dart';
import 'package:spotify/spotify.dart';
import 'package:flutter/material.dart';

import 'database.dart';
import 'song_info.dart';

class Spotify {
  DatabaseData databaseObject = DatabaseData();
  static var _userInformation = SpotifyApiCredentials(
      //these values came from the developer userID and Key, respectively/
      'e805253ca6484e9ebbc8bf82ab1bfdd5',
      'ec14555dbaad4b23abc3ea8548952968');
  //creates a variable that holds the spotify login
  var _spotify = SpotifyApi(_userInformation);

  Future<List<TrackSimple>> getSearch(String searchBox) async {
    List<TrackSimple> searchResults = [];

    //if the searchbar is empty
    if (searchBox == null) {
      //return the empty list
      return searchResults;
    }

    //if searchbar is not empty
    //
    var populatedSearch = await _spotify.search
        .get(searchBox)
        .first(10)
        .catchError((error) => debugPrint((error as SpotifyException).message));

//searches through each page, and then each entry in the page
    populatedSearch.forEach((page) {
      page.items.forEach((entry) {
        if (entry is TrackSimple) {
          searchResults.add(entry);
        }
      });
    });
    //returns songs
    return searchResults;
  }

  //returns list of recommendations
  Future<List<TrackSimple>> recommended() async {
    List<SongData> songs = await databaseObject.getTrackList();

    //if no data is found
    if (songs.length == 0) {
      return null;
    }

    List<String> songIdent = List<String>();

    songs.forEach((element) {
      songIdent.add(element.id);
    });
    Recommendations recommendedTitles = await _spotify.recommendations.get(
      // max seeds: 5, get the last 5 as that will be more accurate
      seedTracks: songIdent.length <= 5
          ? songIdent
          : songIdent.sublist(songIdent.length - 5),
      limit: 10,
    );
    //returns a list of tracks using the spotify api
    return recommendedTitles.tracks;
  }

  Future<Track> songDataRet(String songSid) async {
    Track songID = await _spotify.tracks.get(songSid);
    return songID;
  }
}
