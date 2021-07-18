import 'package:exercise3/screens/main/counter_viewmodel.dart';
import 'package:exercise3/screens/view.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final CounterViewmodel _viewmodel;
  const Body(CounterViewmodel viewmodel) : _viewmodel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: IconButton(
                  icon: Icon(Icons.local_dining),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home_recipe');
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: IconButton(
                  icon: Icon(Icons.redeem),
                  onPressed: () {
                    Navigator.pushNamed(context, '/ingredient');
                  },
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: IconButton(
              icon: Icon(Icons.book),
              onPressed: () {
                Navigator.pushNamed(context, '/myRecipe');
              },
            ),
          ),
        ],
      ),
    );
  }
}
