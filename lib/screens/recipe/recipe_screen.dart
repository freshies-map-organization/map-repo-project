import 'package:exercise3/models/recipe.dart';
import 'package:flutter/material.dart';

import 'widgets/bar.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: Bar(),
        body: Body(
          data: _data,
        ),
      ),
    );
  }
}
