import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/main/main_viewmodel.dart';
import 'package:flutter/material.dart';

import '../view.dart';
import 'widgets/body.dart';

class RecipeScreen extends StatelessWidget {
  // const RecipeScreen({ Key? key }) : super(key: key);

  static Route route({data}) => MaterialPageRoute(
      builder: (context) => RecipeScreen(
            data: data,
          ));

  RecipeScreen({data}) : _data = data;
  Recipe _data;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: SafeArea(
        child: View(
            viewmodel: MainViewmodel(),
            builder: (_, mainViewmodel, __) {
              return Scaffold(
                body: Body(
                  data: _data,
                ),
              );
            }),
      ),
    );
  }
}
