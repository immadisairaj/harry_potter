import 'package:flutter/material.dart';
import 'random_house.dart';

class HatRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RandomHouse rand = new RandomHouses().getRandomHouse();
    return Scaffold (
      backgroundColor: rand.color,
      body: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox (
            width: 500.0,
            height: 400.0,
            child: Image.asset (
              rand.assetImage,
            ),
          ),
          Text (
            rand.house,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}