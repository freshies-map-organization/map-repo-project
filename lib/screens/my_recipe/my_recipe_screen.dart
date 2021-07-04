import 'package:exercise3/screens/main/main_viewmodel.dart';
import 'package:exercise3/screens/my_recipe/my_recipe_viewmodel.dart';
import 'package:exercise3/screens/my_recipe/widgets/bar.dart';
import 'package:exercise3/screens/my_recipe/widgets/body.dart';
import 'package:exercise3/screens/my_recipe/widgets/float.dart';
import 'package:exercise3/screens/view.dart';
import 'package:flutter/material.dart';

class MyRecipeScreen extends StatefulWidget {
  // const MyRecipeScreen({ Key? key }) : super(key: key);
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
