import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/bookmark/bookmark_screen.dart';
import 'package:exercise3/screens/create_recipe/create_recipe_screen.dart';
import 'package:exercise3/screens/home_recipe/homerecipe_screen.dart';
import 'package:exercise3/screens/ingredient/ingredient_screen.dart';
import 'package:exercise3/screens/my_recipe/my_recipe_screen.dart';
import 'package:exercise3/screens/profile/profile_screen.dart';
import 'package:exercise3/screens/sign_up/signup_screen.dart';
import 'package:flutter/material.dart';

import '../screens/login/login_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/recipe/recipe_screen.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/main':
      return MainScreen.route();

    case '/login':
      return LoginScreen.route();

    case '/signUp':
      return SignUpScreen.route();

    case '/recipe':
      return RecipeScreen.route(data: settings.arguments as Recipe);

    case '/newRecipe':
      return CreateRecipeScreen.route(isNew: true, data: Recipe);

    case '/editRecipe':
      return CreateRecipeScreen.route(
          isNew: false, data: settings.arguments as Recipe);

    // case '/bookmark':
    //   return BookmarkScreen.route();

    case '/myRecipe':
      return MyRecipeScreen.route();

    case '/ingredient':
      return IngredientScreen.route();

    case '/profile':
      return ProfileScreen.route();

    case '/home_recipe':
      return HomeRecipeScreen.route();
  }
  return null;
}
