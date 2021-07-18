import 'package:flutter/material.dart';

import '../../screens/main/main_viewmodel.dart';
import '../../screens/view.dart';

import 'widgets/sideDrawer.dart';
import 'widgets/body.dart';

import 'homerecipe_viewmodel.dart';

class HomeRecipeScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => HomeRecipeScreen());

  @override
  _HomeRecipeScreenState createState() => _HomeRecipeScreenState();
}

class _HomeRecipeScreenState extends State<HomeRecipeScreen> {
  final GlobalKey<ScaffoldState> mainDrawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: View(
            viewmodel: MainViewmodel(),
            builder: (_, mainViewmodel, __) {
              final _recipeViewmodel =
                  HomeRecipeViewModel(mainViewmodel: mainViewmodel);

              return Scaffold(
                key: mainDrawerKey,
                drawer: SideDrawer(_recipeViewmodel),
                body: Body(_recipeViewmodel, mainDrawerKey),
              );
            }),
      ),
    );
  }
}
