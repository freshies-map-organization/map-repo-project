import 'package:flutter/material.dart';

import '../../main/main_viewmodel.dart';

class Body extends StatelessWidget {
  final MainViewmodel _viewmodel;
  const Body(MainViewmodel viewmodel) : _viewmodel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/foodie.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.local_dining),
                        iconSize: 50,
                        onPressed: () {
                          Navigator.pushNamed(context, '/home_recipe');
                        },
                      ),
                      Text(
                        'View Recipe',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.redeem),
                        iconSize: 50,
                        onPressed: () {
                          Navigator.pushNamed(context, '/ingredient');
                        },
                      ),
                      Text(
                        'Ingredient',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.book),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.pushNamed(context, '/myRecipe');
                    },
                  ),
                  Text(
                    'Add Recipe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
