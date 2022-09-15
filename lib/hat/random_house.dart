import 'package:flutter/material.dart';
import 'dart:math';

class RandomHouse {
  Color? color;
  String? assetImage;
  String? house;

  RandomHouse({this.house = null, this.assetImage = null, this.color = null});
}

class RandomHouses {
  RandomHouse getRandomHouse() {
    List<RandomHouse> randomHouses = [
    new RandomHouse (
      house: "Gryffindor",
      assetImage: "assets/images/gryffindor.png",
      color: Colors.red[900],
    ),
    new RandomHouse (
      house: "Slytherin",
      assetImage: "assets/images/slytherin.png",
      color: Colors.green[900],
    ),
    new RandomHouse (
      house: "Ravenclaw",
      assetImage: "assets/images/ravenclaw.png",
      color: Colors.blue[900],
    ),
    new RandomHouse (
      house: "Hufflepuff",
      assetImage: "assets/images/hufflepuff.png",
      color: Colors.yellow[700],
    ),
  ];

    var random = new Random();
    int number = random.nextInt(4);
    return randomHouses[number];
  }
}