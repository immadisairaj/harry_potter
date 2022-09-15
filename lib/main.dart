import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hat/hat_route.dart';
import 'characters/characters_route.dart';
import 'houses/houses_route.dart';
import 'spells/spells_route.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {
  runApp(HarryPotterApp());
  // });
}

class HarryPotterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harry Potter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        accentColor: Colors.amber,
        fontFamily: 'Montserrat',
      ),
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/hogwarts.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Harry Potter App',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.amber,
                  ),
                ),
              ),
              Center(
                child: Opacity(
                  opacity: 0.7,
                  child: SizedBox(
                    width: 200.0,
                    height: 80.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: ElevatedButton(
                        // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                        // color: Colors.blue[900],
                        child: Text(
                          "Hat",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HatRoute()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Opacity(
                  opacity: 0.7,
                  child: SizedBox(
                    width: 200.0,
                    height: 80.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: ElevatedButton(
                        // shape: new RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(20.0)),
                        // color: Colors.blue[900],
                        child: Text(
                          "Characters",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CharactersRoute()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Opacity(
                  opacity: 0.7,
                  child: SizedBox(
                    width: 200.0,
                    height: 80.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: ElevatedButton(
                        // shape: new RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(20.0)),
                        // color: Colors.blue[900],
                        child: Text(
                          "Houses",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HousesRoute()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Opacity(
                  opacity: 0.7,
                  child: SizedBox(
                    width: 200.0,
                    height: 80.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      child: ElevatedButton(
                        // shape: new RoundedRectangleBorder(
                        //     borderRadius: new BorderRadius.circular(20.0)),
                        // color: Colors.blue[900],
                        child: Text(
                          "Spells",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpellsRoute()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
