import 'package:seniorproject/models/song_info.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DatabaseData {
  //this is a member of the class I am creating
  static DatabaseData _databaseData;
  //this is utilzing the database class from sqflite
  static Database _sqlDatabase;

  String dataTab = 'tab';
  String dataID = 'id';
  String dataTitle = 'title';
  String dataCode = 'code';

  DatabaseData._createInstance();

  factory DatabaseData() {
    //creates an instance if databaseData is empty.
    if (_databaseData == null) {
      _databaseData = DatabaseData._createInstance();
    }
    return _databaseData;
  }

  Future<Database> get database async {
    if (_sqlDatabase == null) {
      _sqlDatabase = await dataInitialization();
    }

    return _sqlDatabase;
  }

  Future<Database> dataInitialization() async {
    //Directory in this case is from dart:io
    //references to filesystem
    Directory directory = await getApplicationDocumentsDirectory();
    //gets the path to the directory
    String directPath = directory.path + 'song_hits.sqlData';

    var dataStatus =
        await openDatabase(directPath, version: 1, onCreate: createDatabase);
    return dataStatus;
  }

//now that database has been created, there must be a way to get
//information from said database.
  void createDatabase(Database sqlData, int creation) async {
    //EXECUTES AN SQL QUERY BELOW
    await sqlData.execute('CREATE TABLE $dataTab('
        '$dataID INTEGER PRIMARY KEY AUTOINCREMENT,'
        '$dataTitle TEXT,'
        '$dataCode TEXT)');
  }

  //retreve songs
  Future<List<Map<String, dynamic>>> songListMap() async {
    Database sqlData = await this.database;
    var compOut = await sqlData.query(dataTab, orderBy: '$dataTitle ASC');
    return compOut;
  }

//////////////////////////////////
// Insert a SongData object to database
  Future<int> insertTrack(SongData songData) async {
    Database sqlData = await this.database;
    var compOut = await sqlData.insert(dataTab, songData.toMap());
    return compOut;
  }

  // Delete a SongData object from database
  Future<int> deleteTrack(int song) async {
    Database sqlData = await this.database;
    int compOut =
        await sqlData.delete(dataTab, where: '$dataID = ?', whereArgs: [song]);
    return compOut;
  }

  // Get number of tracks in database;
  Future<int> getCount() async {
    Database sqlData = await this.database;

    List<Map<String, dynamic>> x =
        await sqlData.rawQuery('SELECT COUNT (*) from $dataTab');
    int compOut = Sqflite.firstIntValue(x);
    return compOut;
  }

  // Get a Map List and convert it to SongData List
  Future<List<SongData>> getTrackList() async {
    var songList = await songListMap();
    int count = songList.length;

    List<SongData> listOfSongs = [];
    //List<SongData>();

    for (int i = 0; i < count; i++) {
      listOfSongs.add(SongData.fromMapObject(songList[i]));
    }
    return listOfSongs;
  }
}
