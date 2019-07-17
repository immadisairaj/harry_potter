import 'package:flutter/material.dart';
import '../services.dart';
import 'character_model.dart';

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
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${snapshot.data[position].role}',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'Blood Status: ${snapshot.data[position].bloodStatus}',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // onTap: () {
                  //   // Todo: goto each character when clicked
                  // },
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