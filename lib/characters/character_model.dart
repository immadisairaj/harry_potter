// To parse this JSON data, do
//
//     final character = characterFromJson(jsonString);

import 'dart:convert';

List<Character> characterFromJson(String str) => new List<Character>.from(
    json.decode(str).map((x) => Character.fromJson(x)));

String characterToJson(List<Character> data) =>
    json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Character {
  String? id;
  String? name;
  String? role;
  String? house;
  String? school;
  String? alias;
  String? wand;
  String? boggart;
  String? patronus;
  int? v;
  bool? ministryOfMagic;
  bool? orderOfThePhoenix;
  bool? dumbledoresArmy;
  bool? deathEater;
  String? bloodStatus;
  String? species;

  Character({
    this.id,
    this.name,
    this.role,
    this.house,
    this.school,
    this.alias,
    this.wand,
    this.boggart,
    this.patronus,
    this.v,
    this.ministryOfMagic,
    this.orderOfThePhoenix,
    this.dumbledoresArmy,
    this.deathEater,
    this.bloodStatus,
    this.species,
  });

  factory Character.fromJson(Map<String, dynamic> json) => new Character(
        id: json["_id"],
        name: json["name"],
        role: json["role"],
        house: json["house"],
        school: json["school"],
        alias: json["alias"],
        wand: json["wand"],
        boggart: json["boggart"],
        patronus: json["patronus"],
        v: json["__v"],
        ministryOfMagic: json["ministryOfMagic"],
        orderOfThePhoenix: json["orderOfThePhoenix"],
        dumbledoresArmy: json["dumbledoresArmy"],
        deathEater: json["deathEater"],
        bloodStatus: json["bloodStatus"],
        species: json["species"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "role": role,
        "house": house,
        "school": school,
        "alias": alias,
        "wand": wand,
        "boggart": boggart,
        "patronus": patronus,
        "__v": v,
        "ministryOfMagic": ministryOfMagic,
        "orderOfThePhoenix": orderOfThePhoenix,
        "dumbledoresArmy": dumbledoresArmy,
        "deathEater": deathEater,
        "bloodStatus": bloodStatus,
        "species": species,
      };
}
