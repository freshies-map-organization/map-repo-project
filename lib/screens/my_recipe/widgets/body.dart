import 'package:flutter/material.dart';

import '../../../models/recipe.dart';
import '../my_recipe_viewmodel.dart';

class Body extends StatelessWidget {
  final MyRecipeViewModel _myRecipeModel;
  const Body(viewmodel) : _myRecipeModel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Recipe>>(
        future: _myRecipeModel.futureRecipe,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _myRecipeModel.recipe = snapshot.data;
            return _buildFoodListView();
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  ListView _buildFoodListView() {
    if (_myRecipeModel.recipe.length > 0)
      return ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.white,
              ),
          itemCount: _myRecipeModel.recipe.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${_myRecipeModel.recipe[index].title}'),
              subtitle: Text('${_myRecipeModel.recipe[index].description}'),
              trailing: Wrap(spacing: 2, children: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => _onEdit(context, index),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () =>
                      _recipeDelete(context, _myRecipeModel.recipe[index].uid),
                ),
              ]),
              onTap: () => _recipeDetail(context, _myRecipeModel.recipe[index]),
              onLongPress: () {},
            );
          });
  }

  void _recipeDetail(BuildContext context, index) {
    Navigator.pushNamed(context, '/recipe', arguments: Recipe.copy(index));
  }

  void _recipeDelete(BuildContext context, index) {
    _myRecipeModel.deleteRecipe(index);
    print(index);
  }

  void _onEdit(BuildContext context, index) {
    Navigator.pushNamed(context, '/editRecipe',
        arguments: Recipe.copy(_myRecipeModel.recipe[index]));
  }
}
