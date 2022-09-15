// To parse this JSON data, do
//
//     final house = houseFromJson(jsonString);

import 'dart:convert';

List<House> houseFromJson(String str) => new List<House>.from(json.decode(str).map((x) => House.fromJson(x)));

String houseToJson(List<House> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class House {
    String? id;
    String? name;
    String? mascot;
    String? headOfHouse;
    String? houseGhost;
    String? founder;
    int? v;
    String? school;
    List<Member>? members;
    List<String>? values;
    List<String>? colors;

    House({
        this.id,
        this.name,
        this.mascot,
        this.headOfHouse,
        this.houseGhost,
        this.founder,
        this.v,
        this.school,
        this.members,
        this.values,
        this.colors,
    });

    factory House.fromJson(Map<String, dynamic> json) => new House(
        id: json["_id"],
        name: json["name"],
        mascot: json["mascot"],
        headOfHouse: json["headOfHouse"],
        houseGhost: json["houseGhost"],
        founder: json["founder"],
        v: json["__v"],
        school: json["school"],
        members: new List<Member>.from(json["members"].map((x) => Member.fromJson(x))),
        values: new List<String>.from(json["values"].map((x) => x)),
        colors: new List<String>.from(json["colors"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "mascot": mascot,
        "headOfHouse": headOfHouse,
        "houseGhost": houseGhost,
        "founder": founder,
        "__v": v,
        "school": school,
        "members": new List<dynamic>.from(members!.map((x) => x.toJson())),
        "values": new List<dynamic>.from(values!.map((x) => x)),
        "colors": new List<dynamic>.from(colors!.map((x) => x)),
    };
}

class Member {
    String? id;
    String? name;

    Member({
        this.id,
        this.name,
    });

    factory Member.fromJson(Map<String, dynamic> json) => new Member(
        id: json["_id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
    };
}