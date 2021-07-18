import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton.extended(
                onPressed: () => Navigator.pushNamed(context, '/newRecipe'),
                label: Text("Add Recipe")),
          ],
        ),
      ],
    );
  }
}
