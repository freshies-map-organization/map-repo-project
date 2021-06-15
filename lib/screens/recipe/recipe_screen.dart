import 'package:flutter/material.dart';

import 'widgets/bar.dart';
import 'widgets/body.dart';

class RecipeScreen extends StatelessWidget {
  // const RecipeScreen({ Key? key }) : super(key: key);

  static Route route() =>
      MaterialPageRoute(builder: (context) => RecipeScreen());

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
