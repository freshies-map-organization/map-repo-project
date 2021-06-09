import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  // const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Title(
                child: Text('title here'),
                color: Colors.amber,
              ),
            ],
          ),
          Row(
            // crossAxisAlignment: C,
            children: [
              Title(
                child: Text('ingredient here'),
                color: Colors.amber,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Title(
                        child: Text('ingredient here'),
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),

      // children: <Widget>[
      //   Title(color: Colors.black, child: Text('Title 1')),
      //   ListView.separated(
      //     itemCount: 5,
      //     separatorBuilder: (context, index) => Divider(
      //       color: Colors.black,
      //     ),
      //     itemBuilder: (context, index) => ListTile(
      //       title: Text('Item 1'),
      //     ),
      //   ),
      // ],
      // FutureBuilder(builder: context, snapshot)(
    );
  }
}
