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
              title: Text('${_data.title}'),
              background: Image(
                // image: AssetImage('assets/images/anna-pelzer.jpg'),
                image: AssetImage(_data.result),
                fit: BoxFit.fitWidth,
              )),
        ),
        SliverAppBar(
            pinned: false,
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
              return InkWell(
                onTap: () => Navigator.pushNamed(context, "/ingredient"),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100],
                  child: Text('${_data.ingredient[index]}'),
                ),
              );
            },
            childCount: _data.ingredient.length,
          ),
        ),
        SliverAppBar(
            pinned: false,
            expandedHeight: 5.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Step'),
            )),
        SliverList(
            delegate: SliverChildListDelegate(List.generate(
                    _data.step.length, (index) => CustomWidget(index, _data))
                .toList())),
      ]),
    );
  }
}

class CustomWidget extends StatelessWidget {
  CustomWidget(this._index, this._data) {
    debugPrint('initialize: $_index');
  }
  final int _index;
  final _data;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(20.0),
      color: Colors.grey,
      child: Text('${_data.step[_index]}', style: TextStyle(fontSize: 18)),
    );
  }
}
