import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        // Add the app bar to the CustomScrollView.
        SliverAppBar(
          // Provide a standard title.
          title: Text('Recipe title'),
          // Allows the user to reveal the app bar if they begin scrolling
          // back up the list of items.
          floating: false,
          pinned: false,
          snap: false,
          // Display a placeholder widget to visualize the shrinking size.
          flexibleSpace: const FlexibleSpaceBar(
              // title: Text('Recipe :'),
              ),
        ),
        const SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
          child: SizedBox(
            height: 50,
            child: Text('ingredient'),
          ),
        )

            // Make the initial height of the SliverAppBar larger than normal.
            // expandedHeight: 50,
            ),
        // Next, create a SliverList
        SliverList(
          // Use a delegate to build items as they're scrolled on screen.
          delegate: SliverChildBuilderDelegate(
            // The builder function returns a ListTile with a title that
            // displays the index of the current item.
            (context, index) => ListTile(title: Text('Item #$index')),
            // Builds 1000 ListTiles
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
