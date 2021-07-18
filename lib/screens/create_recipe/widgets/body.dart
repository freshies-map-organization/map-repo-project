import 'package:exercise3/models/recipe.dart';
import 'package:exercise3/screens/create_recipe/create_recipe_screen.dart';
import 'package:exercise3/screens/create_recipe/create_recipe_viewmodel.dart';
import 'package:exercise3/screens/view.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);
  final CreateRecipeViewModel _viewRecipeModel;
  Body({viewmodel}) : _viewRecipeModel = viewmodel;

  final _formKey = GlobalKey<FormState>();

  bool value = true;

  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: CreateRecipeViewModel(),
      builder: (context, viewmodel, _) => Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: 'Recipe Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter recipe name';
                  }
                  return null;
                },
                onChanged: (value) => viewmodel.title = value,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter recipe description';
                  }
                  return null;
                },
                onChanged: (value) => viewmodel.description = value,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Ingredient"),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: '1.'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Ingredient';
                  }
                  return null;
                },
                onChanged: (value) => viewmodel.ingredientOne = value,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: '2.'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Ingredient';
                  }
                  return null;
                },
                onChanged: (value) => viewmodel.ingredientTwo = value,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text("Step"),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: '1.'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Step';
                  }
                  return null;
                },
                onChanged: (value) => viewmodel.stepOne = value,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: '2.'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Step';
                  }
                  return null;
                },
                onChanged: (value) => viewmodel.stepTwo = value,
              ),
              SizedBox(
                height: 30.0,
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     FlatButton(onPressed: selectFile, child: Text("Select File")),
              //   ],
              // ),
              // ButtonBar(),
              SizedBox(
                height: 15.0,
              ),
              CheckboxListTile(
                // value: viewmodel.shared,
                value: value,
                onChanged: (value) => value = !value,
                title: Text('Shared'),
              ),
              _buildButtons(context, viewmodel)
            ],
          ),
        ),
      ),
    );
  }
}

Row _buildButtons(BuildContext context, CreateRecipeViewModel viewmodel) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        child: Text('Ok'),
        onPressed: () => _onOk(context, viewmodel),
      ),
      SizedBox(width: 10.0),
      ElevatedButton(
        child: Text('Cancel'),
        onPressed: () => _onCancel(context, viewmodel),
      ),
    ],
  );
}

void _onOk(BuildContext context, CreateRecipeViewModel viewmodel) async {
  final Recipe _recipe = await viewmodel.createRecipe();
  // viewmodel.addRecipe(_recipe);
  if (_recipe != null) {
    Navigator.pop(context, _recipe);
  } else {
    Navigator.pop(context, null);
  }
}

void _onCancel(BuildContext context, CreateRecipeViewModel viewmodel) =>
    Navigator.pop(context, null);
