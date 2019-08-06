import 'package:flutter/material.dart';
import '../services.dart';
import 'character_model.dart';
import 'each_character_route.dart';

class CharactersRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.purple[900],
      body: FutureBuilder<List<Character>> (
        future: getAllCharacters(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center (
              child: CircularProgressIndicator()
            );
          } else if (snapshot.hasError) {
            return Center (
              child: Padding (
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Please Check Your Internet Connectivity and Try again",
                  textAlign: TextAlign.center,
                  style: TextStyle (
                    fontSize: 45.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }
          return ListView.builder (
            itemBuilder: (context, position) {
              return Padding (
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 1.0, bottom: 1.0),
                child: GestureDetector (
                  child: Card (
                    child: Padding (
                      padding: EdgeInsets.all(4.0),
                      child: Column (
                        children: <Widget>[
                          Text(
                            '${snapshot.data[position].name}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (snapshot.data[position].role != null) Text(
                            '${snapshot.data[position].role}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'Blood Status: ${snapshot.data[position].bloodStatus}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push (
                      context,
                      MaterialPageRoute(builder: (context) => EachCharacterRoute(characterName: snapshot.data[position].name)),
                    );
                  },
                ),
              );
            },
            itemCount: snapshot.data.length,
          );
        },
      ),
    );
  }
}