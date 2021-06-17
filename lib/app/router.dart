import 'package:exercise3/models/recipe.dart';
import 'package:flutter/material.dart';

import '../screens/login/login_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/recipe/recipe_screen.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/main':
      return MainScreen.route();

    case '/login':
      return LoginScreen.route();

    // case '/sign_up':
    //   return;

    //   case '/bookmark':
    //   return;

    //   case '/create_recipe':
    //   return;

    //   case '/ingredient':
    //   return;

    //   case '/my_recipe':
    //   return;

    //   case '/profile':
    //   return;

    case '/':
    case '/recipe':
      return RecipeScreen.route(data: settings.arguments as Recipe);

    //   case '/search_by_ingredient':
    //   return;

    //   case '/search_by_name':
    //   return;
  }
  return null;
}
