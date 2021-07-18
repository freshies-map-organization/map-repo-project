import 'package:flutter/material.dart';

import '../../screens/view.dart';

import 'my_recipe_viewmodel.dart';

import 'widgets/bar.dart';
import 'widgets/body.dart';
import 'widgets/float.dart';

class MyRecipeScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => MyRecipeScreen());

  @override
  _MyRecipeScreenState createState() => _MyRecipeScreenState();
}

class _MyRecipeScreenState extends State<MyRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: SafeArea(
        child: View(
            viewmodel: MyRecipeViewModel(),
            builder: (_, mainViewmodel, __) {
              final _myRecipeViewmodel =
                  MyRecipeViewModel(mainViewmodel: mainViewmodel);

              return Scaffold(
                appBar: Bar(),
                body: Body(_myRecipeViewmodel),
                floatingActionButton: Float(),
              );
            }),
      ),
    );
  }
}
