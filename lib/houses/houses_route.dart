import 'package:flutter/material.dart';
import 'each_house_route.dart';

class HousesRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container (
      decoration: BoxDecoration (
        image: DecorationImage (
          image: AssetImage('assets/images/houses.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold (
        backgroundColor: Colors.transparent,
        body: Column (
          children: <Widget>[
            Flexible (
              flex: 1,
              child: Row (
                children: <Widget>[
                  Flexible (
                    flex: 1,
                    child: Opacity (
                      opacity: 0.7,
                      child: Padding (
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox.expand (
                          child: RaisedButton (
                            color: Colors.red[900],
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                            child: Text(
                              "Gryffindor",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push (
                                context,
                                MaterialPageRoute(builder: (context) => EachHouseRoute(houseName: "Gryffindor", backColor: Colors.red[900])),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible (
                    flex: 1,
                    child: Opacity (
                      opacity: 0.7,
                      child: Padding (
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox.expand (
                          child: RaisedButton (
                            color: Colors.green[900],
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                            child: Text(
                              "Slytherin",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push (
                                context,
                                MaterialPageRoute(builder: (context) => EachHouseRoute(houseName: "Slytherin", backColor: Colors.green[900])),
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
            Flexible (
              flex: 1,
              child: Row (
                children: <Widget>[
                  Flexible (
                    flex: 1,
                    child: Opacity (
                      opacity: 0.7,
                      child: Padding (
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox.expand (
                          child: RaisedButton (
                            color: Colors.yellow[700],
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                            child: Text(
                              "Hufflepuff",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push (
                                context,
                                MaterialPageRoute(builder: (context) => EachHouseRoute(houseName: "Hufflepuff", backColor: Colors.yellow[700])),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible (
                    flex: 1,
                    child: Opacity (
                      opacity: 0.7,
                      child: Padding (
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox.expand (
                          child: RaisedButton (
                            color: Colors.blue[900],
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                            child: Text(
                              "Ravenclaw",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push (
                                context,
                                MaterialPageRoute(builder: (context) => EachHouseRoute(houseName: "Ravenclaw", backColor: Colors.blue[900])),
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
          ],
        ),
      ),
    );
  }
}