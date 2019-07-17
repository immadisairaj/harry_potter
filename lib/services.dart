import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';
import 'characters/character_model.dart';
import 'spells/spell_model.dart';
import 'houses/house_model.dart';

String url = 'https://www.potterapi.com/v1';
String key = 'key=\$2a\$10\$zX91m6SQ6kjkXP2eF8ykRuc3YU5WR.Zxsf99Pjqf/ketBzZYSUmKO';

Future<List<Character>> getAllCharacters() async {
  final responce = await http.get('$url/characters?$key');
  print(responce.body);
  return characterFromJson(responce.body);
}

Future<List<Character>> getCharacter(String name) async {
  final responce = await http.get('$url/characters?$key&name=$name');
  print(responce.body);
  return characterFromJson(responce.body);
}

Future<List<Spell>> getAllSpells() async {
  final responce = await http.get('$url/spells?$key');
  print(responce.body);
  return spellFromJson(responce.body);
}

Future<List<House>> getGryffindor() async {
  final responce = await http.get('$url/houses/5a05e2b252f721a3cf2ea33f?$key');
  print(responce.body);
  return houseFromJson(responce.body);
}

Future<List<House>> getRavenclaw() async {
  final responce = await http.get('$url/houses/5a05da69d45bd0a11bd5e06f?$key');
  print(responce.body);
  return houseFromJson(responce.body);
}

Future<List<House>> getHufflepuff() async {
  final responce = await http.get('$url/houses/5a05dc58d45bd0a11bd5e070?$key');
  print(responce.body);
  return houseFromJson(responce.body);
}

Future<List<House>> getSlytherin() async {
  final responce = await http.get('$url/houses/5a05dc8cd45bd0a11bd5e071?$key');
  print(responce.body);
  return houseFromJson(responce.body);
}