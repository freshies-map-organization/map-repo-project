import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  // const Bar({ Key? key }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Ingredient"),
    );
  }
}
