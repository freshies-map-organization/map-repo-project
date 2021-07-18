import 'package:flutter/material.dart';

import '../../../models/ingredient.dart';

import '../ingredient_viewmodel.dart';

class Body extends StatelessWidget {
  final IngredientViewModel _viewIngredientModel;
  const Body(viewmodel) : _viewIngredientModel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Ingredient>>(
        future: _viewIngredientModel.futureIngredient,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _viewIngredientModel.ingredient = snapshot.data;
            return _buildIngredientListView();
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  ListView _buildIngredientListView() {
    if (_viewIngredientModel.ingredient.length > 0)
      return ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.blueGrey,
              ),
          itemCount: _viewIngredientModel.ingredient.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${_viewIngredientModel.ingredient[index].name}'),
              subtitle: Text(
                  '${_viewIngredientModel.ingredient[index].ingredientType}'),
            );
          });
  }
}
