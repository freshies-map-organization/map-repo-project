import 'package:easy_cook_application/screens/recipe/body.dart';
import 'package:flutter/material.dart';

import 'bar.dart';

class RecipeScreen extends StatelessWidget {
  // const RecipeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Bar(),
        body: Body(),
      ),
    );
  }
}
