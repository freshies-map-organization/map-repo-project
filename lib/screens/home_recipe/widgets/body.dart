import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/main/counter_viewmodel.dart';
import 'package:exercise3/screens/view.dart';
import 'package:flutter/material.dart';

import '../homerecipe_viewmodel.dart';

class Body extends StatelessWidget {
  // final RecipeViewModel _viewmodel;
  // const Body(RecipeViewModel viewmodel) : _viewmodel = viewmodel;

  final HomeRecipeViewModel _viewRecipeModel;
  const Body(viewmodel) : _viewRecipeModel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Recipe>>(
      future: _viewRecipeModel.futureRecipe,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          _viewRecipeModel.recipe = snapshot.data;
          // _viewmodel.foodList;
          return _buildFoodListView();
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
      //FoodList(),
    );
  }

  ListView _buildFoodListView() {
    if (_viewRecipeModel.recipe.length > 0)
      return ListView.builder(
          itemCount: _viewRecipeModel.recipe.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${_viewRecipeModel.recipe[index].title}'),
              subtitle: Text('ss'),
              onTap: () =>
                  // {print(_viewRecipeModel.recipe[index].ingredient[1])}
                  _recipeDetail(context, _viewRecipeModel.recipe[index]),
            );
          });
  }

  void _recipeDetail(BuildContext context, index) {
    Navigator.pushNamed(context, '/recipe', arguments: Recipe.copy(index));
  }
}
