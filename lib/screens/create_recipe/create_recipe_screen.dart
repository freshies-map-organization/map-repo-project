import 'package:flutter/material.dart';
import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/create_recipe/create_recipe_viewmodel.dart';
import 'package:exercise3/screens/create_recipe/widgets/body.dart';
import 'package:exercise3/screens/view.dart';
import 'package:flutter/material.dart';

import 'widgets/bar.dart';
import 'widgets/body.dart';

class CreateRecipeScreen extends StatefulWidget {
  // const CreateRecipeScreen({ Key? key }) : super(key: key);

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
