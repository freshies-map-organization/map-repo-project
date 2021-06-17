import 'package:flutter/material.dart';

import 'widgets/bar.dart';
import 'widgets/body.dart';

class HomeRecipeScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => HomeRecipeScreen());

  @override
  _HomeRecipeScreenState createState() => _HomeRecipeScreenState();
}

class _HomeRecipeScreenState extends State<HomeRecipeScreen> {
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
