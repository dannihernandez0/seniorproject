class SongData {
  //Variables and Functions

  SongData.allVariables(this._songCode, this._songTitle, this._songID);
  SongData(this._songTitle, this._songID);

  int _songCode;
  int get code => _songCode;

  String _songTitle;
  String _songID;
  String get title => _songTitle;
  String get id => _songID;
  set title(String setTitle) {
    this._songTitle = setTitle;
  }

  set id(String setID) {
    this._songID = setID;
  }

  //Datatype that will hold the value of the
  //request.
  Map<String, dynamic> toMap() {
    var mapTrack = Map<String, dynamic>();
    if (code != null) {
      mapTrack['code'] = _songCode;
    }

    mapTrack['title'] = _songTitle;
    mapTrack['id'] = _songID;

    return mapTrack;
  }

  SongData.fromMapObject(Map<String, dynamic> mapTrack) {
    this._songCode = mapTrack['code'];
    this._songTitle = mapTrack['title'];
    this._songID = mapTrack['id'];
  }
  
}
