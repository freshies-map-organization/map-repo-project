import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  // const Bar({ Key? key }) : super(key: key);
//
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {},
        child: Icon(Icons.home),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.zero,
          child: GestureDetector(
            onTap: () {},
            child: CircleAvatar(
                // backgroundImage: AssetImage('assets/unknown_user.png'),
                ),
          ),
        )
      ],
    );
  }
}
