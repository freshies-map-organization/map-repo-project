import 'package:flutter/material.dart';
import '../profile_screen.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  const Bar({state}) : _state = state;

  final ProfileScreen _state;

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text("Profile"),
        leading: IconButton(
          icon: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 44,
              minHeight: 44,
              maxWidth: 44,
              maxHeight: 44,
            ),
            child:
                Image.asset('assets/images/home_icon.png', fit: BoxFit.cover),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ]);
  }
}
