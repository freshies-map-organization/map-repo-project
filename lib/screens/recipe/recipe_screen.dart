import 'package:flutter/material.dart';

import 'widgets/bar.dart';
import 'widgets/body.dart';

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
