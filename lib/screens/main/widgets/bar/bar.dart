import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  final ImageProvider _image;
  final String _title;
  final IconButton _button;

  const Bar({image, title, button})
      : _image = image,
        _title = title,
        _button = button;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CircleAvatar(
        backgroundImage: _image,
        backgroundColor: Colors.blueGrey,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EzCook',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: [_button],
    );
  }
}
