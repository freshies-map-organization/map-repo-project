import 'package:exercise3/screens/home_recipe/widgets/float.dart';
import 'package:exercise3/screens/main/main_viewmodel.dart';
import 'package:exercise3/screens/view.dart';
import 'package:flutter/material.dart';

import 'homerecipe_viewmodel.dart';
import 'widgets/bar.dart';
import 'widgets/body.dart';

class HomeRecipeScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => HomeRecipeScreen());

  @override
  _HomeRecipeScreenState createState() => _HomeRecipeScreenState();
}

class _HomeRecipeScreenState extends State<HomeRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: View(
            viewmodel: MainViewmodel(),
            builder: (_, mainViewmodel, __) {
              final _recipeViewmodel =
                  // RecipeViewModel(mainViewmodel: mainViewmodel);
                  HomeRecipeViewModel(mainViewmodel: mainViewmodel);

              return Scaffold(
                appBar: Bar(),
                body: Body(_recipeViewmodel),
                floatingActionButton: Float(_recipeViewmodel),
              );
            }),
      ),
    );
  }
}
