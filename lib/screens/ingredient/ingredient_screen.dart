import 'package:flutter/material.dart';

import '../view.dart';

import 'ingredient_viewmodel.dart';
import 'widgets/bar.dart';
import 'widgets/body.dart';

class IngredientScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => IngredientScreen());

  @override
  _IngredientScreenState createState() => _IngredientScreenState();
}

class _IngredientScreenState extends State<IngredientScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(true),
        child: SafeArea(
          child: View(
              viewmodel: IngredientViewModel(),
              builder: (_, mainViewmodel, __) {
                return Scaffold(
                  appBar: Bar(),
                  body: Body(mainViewmodel),
                );
              }),
        ));
  }
}
