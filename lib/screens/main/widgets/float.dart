import 'package:flutter/material.dart';

import '../counter_viewmodel.dart';

class Float extends StatelessWidget {
  final CounterViewmodel _counterViewmodel;
  const Float(counterViewmodel) : _counterViewmodel = counterViewmodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FloatingActionButton(
            //   tooltip: 'Increase counter',
            //   child: Icon(Icons.add),
            //   heroTag: null,
            //   onPressed: () => _onPressPlusButton(context),
            // ),
            FloatingActionButton(
                child: Icon(Icons.arrow_forward),
                onPressed: () => _nextButton(context))
          ],
        ),
      ],
    );
  }

  // void _onPressPlusButton(BuildContext context) async {
  //   _counterViewmodel.increaseCounter();
  // }

  void _nextButton(BuildContext context) =>
      Navigator.pushNamed(context, '/home_recipe');
}
