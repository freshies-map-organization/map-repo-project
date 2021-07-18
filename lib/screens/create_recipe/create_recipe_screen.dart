import 'package:flutter/material.dart';

import '../view.dart';

import 'widgets/bar.dart';
import 'widgets/body.dart';

import 'create_recipe_viewmodel.dart';

class CreateRecipeScreen extends StatefulWidget {
  static Route route({isNew, data}) =>
      MaterialPageRoute(builder: (context) => CreateRecipeScreen());

  @override
  _CreateRecipeScreenState createState() => _CreateRecipeScreenState();
}

class _CreateRecipeScreenState extends State<CreateRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: View(
            viewmodel: CreateRecipeViewModel(),
            builder: (_, mainViewmodel, __) {
              return SafeArea(
                  child: Scaffold(
                appBar: Bar(),
                body: SingleChildScrollView(
                    child: Body(
                  viewmodel: mainViewmodel,
                )),
              ));
            }));
  }
}
