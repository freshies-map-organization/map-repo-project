import 'package:flutter/material.dart';

class Float extends StatelessWidget {
  // const Float({ Key? key }) : super(key: key);

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
                onPressed: () => Navigator.pushNamed(context, '/newRecipe')
                // _onPressPlusButton(context),
                ),
          ],
        ),
      ],
    );
  }
}
