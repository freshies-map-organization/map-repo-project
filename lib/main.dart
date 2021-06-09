import 'package:flutter/material.dart';

import 'screens/initial_screen.dart';
import 'screens/recipe/recipe_screen.dart';
// import 'screens/login/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: InitialScreen(),
      // home: LoginScreen(),
      home: RecipeScreen(),
    ),
  );
}
