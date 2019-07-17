// To parse this JSON data, do
//
//     final spell = spellFromJson(jsonString);

import 'dart:convert';

List<Spell> spellFromJson(String str) => new List<Spell>.from(json.decode(str).map((x) => Spell.fromJson(x)));

String spellToJson(List<Spell> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Spell {
    String id;
    String spell;
    String type;
    String effect;

    Spell({
        this.id,
        this.spell,
        this.type,
        this.effect,
    });

    factory Spell.fromJson(Map<String, dynamic> json) => new Spell(
        id: json["_id"],
        spell: json["spell"],
        type: json["type"],
        effect: json["effect"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "spell": spell,
        "type": type,
        "effect": effect,
    };
}