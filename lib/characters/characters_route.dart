import 'package:flutter/material.dart';
import '../services.dart';
import 'character_model.dart';
import 'each_character_route.dart';

List<Character> characters;

class CharactersRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.purple[900],
      body: FutureBuilder<List<Character>> (
        future: getAllCharacters(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center (
              child: CircularProgressIndicator()
            );
          } else if (snapshot.hasError) {
            return Center (
              child: Padding (
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Please Check Your Internet Connectivity and Try again",
                  textAlign: TextAlign.center,
                  style: TextStyle (
                    fontSize: 45.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }
          characters = snapshot.data;
          return Padding (
            padding: EdgeInsets.all(10.0),
            child: AllCharacters(),
          );
        },
      ),
    );
  }
}

class AllCharacters extends StatefulWidget {
  _AllCharacters createState() => _AllCharacters();
}

class _AllCharacters extends State<AllCharacters> {
  
  TextEditingController editingController = TextEditingController();
  var items = List<Character>();

  @override
  void initState() {
    items.addAll(characters);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column (
      children: <Widget>[
        Flexible (
          flex: 0,
          child: Padding (
            padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: InputDecoration(
                  labelText: "Search",
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
            ),
          ),
        ),
        Flexible (
          flex: 1,
          child: ListView.builder (
            itemBuilder: (context, position) {
              return Padding (
                padding: EdgeInsets.only(left: 2.0, right: 2.0, top: 1.0, bottom: 1.0),
                child: GestureDetector (
                  child: Card (
                    child: Padding (
                      padding: EdgeInsets.all(4.0),
                      child: Column (
                        children: <Widget>[
                          Text(
                            '${characters[position].name}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (characters[position].role != null) Text(
                            '${characters[position].role}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                            ),
                          ),
                          Text(
                            'Blood Status: ${characters[position].bloodStatus}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18.0,
                                fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push (
                      context,
                      MaterialPageRoute(builder: (context) => EachCharacterRoute(characterName: characters[position].name)),
                    );
                  },
                ),
              );
            },
            itemCount: characters.length,
          ),
        ),
      ],
    );
  }

  void filterSearchResults(String query) {
    List<Character> dummySearchList = List<Character>();
    dummySearchList.addAll(characters);
    if(query.isNotEmpty) {
      List<Character> dummyListData = List<Character>();
      dummySearchList.forEach((item) {
        if(item.name.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(characters);
      });
    }
  }

}