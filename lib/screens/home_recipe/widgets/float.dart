import 'package:flutter/material.dart';

// import '../counter_viewmodel.dart';
import '../homerecipe_viewmodel.dart';

class Float extends StatelessWidget {
  final HomeRecipeViewModel _viewRecipeModel;
  const Float(viewmodel) : _viewRecipeModel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                child: Icon(Icons.add),
                heroTag: null,
                onPressed: () => Navigator.pushNamed(context, '/ingredient')
                // _onPressPlusButton(context),
                ),
            FloatingActionButton(
                child: Icon(Icons.book),
                heroTag: null,
                onPressed: () => Navigator.pushNamed(context, '/myRecipe')
                // _onPressPlusButton(context),
                ),
            FloatingActionButton(
                child: Icon(Icons.picture_in_picture),
                heroTag: null,
                onPressed: () => Navigator.pushNamed(context, '/profile')
                // _onPressPlusButton(context),
                ),
          ],
        ),
      ],
    );
  }
}
