import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);
  Body({data}) : _data = data;
  final _data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
              title: Text('Recipe'),
              background: Image(
                image: AssetImage('assets/images/anna-pelzer.jpg'),
                fit: BoxFit.fitWidth,
              )),
        ),
        SliverAppBar(
            pinned: true,
            expandedHeight: 5.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Ingredient'),
            )),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300.0,
            // mainAxisSpacing: 5.0,
            // crossAxisSpacing: 1.0,
            childAspectRatio: 5.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100],
                child: Text('$index'),
              );
            },
            childCount: 8,
          ),
        ),
        SliverAppBar(
            pinned: true,
            expandedHeight: 5.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Step'),
            )),
        SliverList(
            delegate: SliverChildListDelegate(
                List.generate(5, (index) => CustomWidget(index)).toList())),
      ]),
    );
  }
}

class CustomWidget extends StatelessWidget {
  CustomWidget(this._index) {
    debugPrint('initialize: $_index');
  }
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey,
      child: Text('index: $_index', style: TextStyle(fontSize: 18)),
    );
  }
}
