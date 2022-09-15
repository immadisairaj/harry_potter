import 'package:flutter/material.dart';
import '../services.dart';
import 'spell_model.dart';

class SpellsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.cyan[900],
      body: FutureBuilder<List<Spell>> (
        future: getAllSpells(),
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
                child: Card (
                  child: Padding (
                    padding: EdgeInsets.all(4.0),
                    child: Column (
                      children: <Widget>[
                        Text(
                          '${snapshot.data![position].spell}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Type: ${snapshot.data![position].type}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(
                          'Effect: ${snapshot.data![position].effect}',
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
              );
            },
            itemCount: snapshot.data!.length,
          );
        },
      ),
    );
  }
}