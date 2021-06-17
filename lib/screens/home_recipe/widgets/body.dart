import 'package:flutter/material.dart';
import '../homerecipe_screen.dart';

class Body extends StatelessWidget {
  const Body({state}) : _state = state;

  final HomeRecipeScreen _state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: TextField(
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Colors.grey[800]),
                hintText: "Search",
                fillColor: Colors.white70),
          ),
        ),
        Card(
          color: Colors.grey[500],
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 70.0, 50.0, 70.0),
                  child: ListTile(
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 80,
                        minHeight: 110,
                        maxWidth: 80,
                        maxHeight: 110,
                      ),
                      child: Image.asset('assets/images/food.jpg',
                          fit: BoxFit.cover),
                    ),
                    title: Text(
                      'Recipe by',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    subtitle: Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
