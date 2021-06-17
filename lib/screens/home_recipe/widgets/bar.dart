//import 'package:exercise3/screens/login/login_screen.dart';

//import '../homerecipe_viewmodel.dart';
//import '../../../app/router.dart' as router;

import 'package:flutter/material.dart';
import '../homerecipe_screen.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  const Bar({state}) : _state = state;

  final HomeRecipeScreen _state;

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          "Profile",
          textAlign: TextAlign.center,
        ),
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
            // do something
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 44,
                maxHeight: 44,
              ),
              child: Image.asset('assets/images/unknown_user.png',
                  fit: BoxFit.cover),
            ),
            onPressed: () {
              // do something
            },
          )
        ]);
  }
}
