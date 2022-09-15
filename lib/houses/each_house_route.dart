import 'package:flutter/material.dart';
import '../services.dart';
import 'house_model.dart';
import '../characters/each_character_route.dart';

class EachHouseRoute extends StatelessWidget {
  final String houseName;
  final Color? backColor;

  EachHouseRoute({Key? key, required this.houseName, required this.backColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: FutureBuilder<List<House>>(
        future: getParticularHouse(houseName),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Please Check Your Internet Connectivity and Try again",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }
          return Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 0,
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            '${snapshot.data![0].name}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (snapshot.data![0].mascot != null)
                            RichText(
                              text: new TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Mascot: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(text: '${snapshot.data![0].mascot}'),
                                ],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          if (snapshot.data![0].headOfHouse != null)
                            RichText(
                              text: new TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Head of House: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: '${snapshot.data![0].headOfHouse}'),
                                ],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          if (snapshot.data![0].houseGhost != null)
                            RichText(
                              text: new TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'House Ghost: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: '${snapshot.data![0].houseGhost}'),
                                ],
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          if (snapshot.data![0].founder != null)
                            RichText(
                              text: new TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Founder: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: '${snapshot.data![0].founder}'),
                                ],
                                style: TextStyle(
                                  fontSize: 20.0,
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
                Flexible(
                  flex: 1,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, position) {
                      return Padding(
                        padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                        child: GestureDetector(
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.all(7.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    '${snapshot.data![0].members![position].name}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 23.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EachCharacterRoute(
                                      characterName: snapshot
                                          .data![0].members![position].name)),
                            );
                          },
                        ),
                      );
                    },
                    itemCount: snapshot.data![0].members!.length,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<List<House>> getParticularHouse(String name) {
    if (name == "Gryffindor") {
      return getGryffindor();
    }
    if (name == "Slytherin") {
      return getSlytherin();
    }
    if (name == "Hufflepuff") {
      return getHufflepuff();
    }
    if (name == "Ravenclaw") {
      return getRavenclaw();
    }
    return getGryffindor();
  }
}
