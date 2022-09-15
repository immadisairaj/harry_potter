import 'package:flutter/material.dart';
import '../services.dart';
import 'character_model.dart';

class EachCharacterRoute extends StatelessWidget {

  final String? characterName;

  EachCharacterRoute({Key? key, required this.characterName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.blueGrey[900],
      body: FutureBuilder<List<Character>> (
        future: getCharacter(characterName),
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
          return Padding (
            padding: EdgeInsets.all(10.0),
            child: Center (
              child: Card (
                child: Padding (
                  padding: EdgeInsets.all(15.0),
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        '${snapshot.data![0].name}',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (snapshot.data![0].alias != null) Text(
                        'alias ${snapshot.data![0].alias}',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                        ),
                      ),
                      if (snapshot.data![0].role != null) Text(
                        '${snapshot.data![0].role}',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                        ),
                      ),
                      if (snapshot.data![0].house != null) RichText(
                        text: new TextSpan (
                          children: <TextSpan>[
                            TextSpan (text: 'House: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan (text: '${snapshot.data![0].house}'),
                          ],
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      if (snapshot.data![0].school != null) RichText(
                        text: new TextSpan (
                          children: <TextSpan>[
                            TextSpan (text: 'School: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan (text: '${snapshot.data![0].school}'),
                          ],
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      if (snapshot.data![0].wand != null) RichText(
                        text: new TextSpan (
                          children: <TextSpan>[
                            TextSpan (text: 'Wand: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan (text: '${snapshot.data![0].wand}'),
                          ],
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      if (snapshot.data![0].patronus != null) RichText(
                        text: new TextSpan (
                          children: <TextSpan>[
                            TextSpan (text: 'Patronus: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan (text: '${snapshot.data![0].patronus}'),
                          ],
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      if (snapshot.data![0].boggart != null) RichText(
                        text: new TextSpan (
                          children: <TextSpan>[
                            TextSpan (text: 'Boggart: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan (text: '${snapshot.data![0].boggart}'),
                          ],
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      if (snapshot.data![0].ministryOfMagic!) Text(
                        'Part of Ministry of Magic',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                        ),
                      ),
                      if (snapshot.data![0].orderOfThePhoenix!) Text(
                        'Part of Order of The Phoenix',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                        ),
                      ),
                      if (snapshot.data![0].dumbledoresArmy!) Text(
                        'Part of Dumbledores Army',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                        ),
                      ),
                      if (snapshot.data![0].deathEater!) Text(
                        'Part of Death Eater',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontStyle: FontStyle.italic,
                        ),
                      ),
                      RichText(
                        text: new TextSpan (
                          children: <TextSpan>[
                            TextSpan (text: 'Blood Status: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan (text: '${snapshot.data![0].bloodStatus}'),
                          ],
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      RichText(
                        text: new TextSpan (
                          children: <TextSpan>[
                            TextSpan (text: 'Species: ', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan (text: '${snapshot.data![0].species}'),
                          ],
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}