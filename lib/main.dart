import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hat/hat_route.dart';
import 'characters/characters_route.dart';
//import 'houses/houses_route.dart';
//import 'spells/spells_route.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(HarryPotterApp());
  });
}

class HarryPotterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen());
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
        // primaryColor: Color(0x0b0630),
        accentColor: Colors.amber,
        fontFamily: 'Montserrat',
      ),
      home: Container (
        decoration: BoxDecoration (
          image: DecorationImage (
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
              Center (
                child: Text (
                  'Harry Potter App',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.amber,
                  ),
                ),
              ),
              Center (
                child: Opacity (
                  opacity: 0.7,
                  child: SizedBox (
                    width: 200.0,
                    height: 80.0,
                    child: RaisedButton (
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      color: Colors.blue[900],
                      child: Text(
                        "Hat",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push (
                          context,
                          MaterialPageRoute(builder: (context) => HatRoute()),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Center (
                child: Opacity (
                  opacity: 0.7,
                  child: SizedBox (
                    width: 200.0,
                    height: 80.0,
                    child: RaisedButton (
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      color: Colors.blue[900],
                      child: Text(
                        "Characters",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push (
                        //   context,
                        //   MaterialPageRoute(builder: (context) => CharactersRoute()),
                        // );
                        // Todo: Add screen for characters list
                      },
                    ),
                  ),
                ),
              ),
              Center (
                child: Opacity (
                  opacity: 0.7,
                  child: SizedBox (
                    width: 200.0,
                    height: 80.0,
                    child: RaisedButton (
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      color: Colors.blue[900],
                      child: Text(
                        "Houses",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push (
                        //   context,
                        //   //MaterialPageRoute(builder: (context) => HousesRoute()),
                        // );
                        // Todo: new Screen with 4 houses and when pressed one of them goes to the house details
                      },
                    ),
                  ),
                ),
              ),
              Center (
                child: Opacity (
                  opacity: 0.7,
                  child: SizedBox (
                    width: 200.0,
                    height: 80.0,
                    child: RaisedButton (
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                      color: Colors.blue[900],
                      child: Text(
                        "Spells",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push (
                        //   context,
                        //   //MaterialPageRoute(builder: (context) => SpellsRoute()),
                        // );
                        // Todo: new Screen with all the spells
                      },
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