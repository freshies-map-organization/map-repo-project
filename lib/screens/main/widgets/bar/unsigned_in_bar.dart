import 'package:exercise3/screens/main/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './bar.dart';

class UnsignedInBar extends Bar {
  final MainViewmodel _viewmodel;
  const UnsignedInBar(viewmodel) : _viewmodel = viewmodel;

  @override
  Widget build(BuildContext context) {
    return Bar(
        title: 'Please log in',
        image: AssetImage('assets/images/yummyfood.jpg'),
        button: IconButton(
            icon: Icon(FontAwesomeIcons.signInAlt),
            onPressed: () => _onPressLoginButton(context)));
  }

  void _onPressLoginButton(context) async {
    final _user = await Navigator.pushNamed(context, '/login');

    if (_user != null) {
      _viewmodel.user = _user;
    }
  }
}
