import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.pink,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Question 1: Rows'),
          ),
          body: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite),
                color: Colors.red,
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.send_outlined),
                onPressed: null,
              ),
              Spacer(),

              IconButton(
                icon: Icon(Icons.bookmark_border_outlined),
                onPressed: null,
              ),
              // ADD YOUR WIDGETS HERE
            ],
          ))),
    );
  }
}
